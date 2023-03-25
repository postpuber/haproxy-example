FROM       alpine:latest
MAINTAINER Yosuke Yamamoto "yosuke.yamamoto@bm-sms.jp"

## Docker Agument Setting
ENV REDIS_HOST localhost

## Required Packages Install
RUN apk update && \
    apk add haproxy openssl && \
    rm -Rf /var/cache/apk/*

ADD haproxy.cfg /etc/haproxy/haproxy.cfg

EXPOSE 80 6379

CMD ["/usr/sbin/haproxy", "-d", "-f", "/etc/haproxy/haproxy.cfg"]

