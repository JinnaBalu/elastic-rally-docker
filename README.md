# Elasticsearch Rally Docker Container

This repository assists in building containers for running Elasticsearch Rally.

## Running rally

With docker cli:

    docker run -v ./tracks:/root/.rally/benchmarks/tracks \
        -v ./rally.ini:/root/.rally/rally.ini \
        ducas/elastic-rally:0.11.0 \
        esrally --pipeline=benchmark-only --target-hosts=localhost:9200 --track=my-track

Or with docker-compose:

    version: "3"
    services:
      my_track:
        image: ducas/elastic-rally:0.11.0
        volumes:
          - ./rally.ini:/root/.rally/rally.ini
          - ./tracks:/root/.rally/benchmarks/tracks
        command: esrally --pipeline=benchmark-only --target-hosts=localhost:9200 --track=my-track

