FROM wscandy/ci-base:1.1.0

MAINTAINER WsCandy <s-bridge@live.co.uk>

RUN apk add --update --virtual curl && \
    set -x && \
    VER="17.03.0-ce" && \
    curl -L -o /tmp/docker-$VER.tgz https://download.docker.com/linux/static/stable/x86_64/docker-$VER.tgz && \
    tar -xz -C /tmp -f /tmp/docker-$VER.tgz && \
    mv /tmp/docker/* /usr/bin && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/*