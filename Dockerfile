FROM alpine:latest

RUN apk upgrade --no-cache

RUN apk --no-cache add msttcorefonts-installer fontconfig && \
    update-ms-fonts && \
    fc-cache -f

RUN apk add texlive-full

ENV HOME /data

WORKDIR /data

VOLUME ["/data"]
