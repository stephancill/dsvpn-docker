### Builder

FROM alpine AS builder
RUN apk --no-cache add gcc git make linux-headers musl-dev
WORKDIR /opt
RUN git clone https://github.com/jedisct1/dsvpn /opt
# RUN env OPTFLAGS=-mfpu=neon make
RUN make

### Packed application

FROM alpine
COPY --from=builder /opt/dsvpn /

# ENTRYPOINT ["/dsvpn"]