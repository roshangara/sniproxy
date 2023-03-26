# Sniproxy HTTP/HTTPS Proxy

This repository contains a Dockerfile and docker-compose.yaml for setting up a Sniproxy HTTP/HTTPS proxy using Alpine Linux. The Sniproxy configuration file (sniproxy.conf) is also included in the `src` folder.

## Requirements

- Docker
- Docker Compose

## Usage

1. Clone this repository: `git clone https://github.com/roshangara/sniproxy.git`
2. Start the container using Docker Compose: `docker compose up -d`

The container will start the Sniproxy service and expose ports 80 and 443 on the host system. The container will also restart automatically in case of any failure.

## Configuration

The `src/sniproxy.conf` file contains the configuration for the Sniproxy service. Modify this file to suit your needs.

By default, Sniproxy listens on ports 80 and 443 and forwards traffic to the same destination using the default table.

## Notes

- The `cap_add: NET_ADMIN` option is required to enable Sniproxy to modify network packets.
