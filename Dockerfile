FROM alpine:3.24.3@sha256:be2656061b536c1883c4034790e21d0a09c5aaaf51968b89368a3c0371ea2c9a

RUN apk add tini dnsdist=2.0.8-r0 dnsdist-luajit=2.0.8-r0

ENTRYPOINT ["tini", "--"]

CMD ["dnsdist", "--supervised", "--disable-syslog", "--log-timestamps"]

