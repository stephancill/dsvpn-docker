# DSVPN Docker

(jedisct1/dsvpn)[https://github.com/jedisct1/dsvpn]

## Setup
On Raspberry Pi 3 and 4, use the following command instead to enable NEON optimizations. To do so, in `Dockerfile` replace the `RUN make` statement with:

`RON env OPTFLAGS=-mfpu=neon make`

## Usage
1. Follow the instructions at (jedisct1/dsvpn)[https://github.com/jedisct1/dsvpn]
2. `docker-compose up`