FROM python:3.6-alpine

ARG ES_RALLY_VERSION=0.11.0

RUN apk add --update --no-cache git build-base linux-headers python-dev openjdk8
RUN pip3 install esrally==${ES_RALLY_VERSION}

