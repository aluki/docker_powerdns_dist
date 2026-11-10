ARG FROM_IMAGE=alpine
ARG FROM_TAG=edge

FROM ${FROM_IMAGE}:${FROM_TAG}

ARG PROGRAM
ARG VERSION

RUN apk add --no-cache tini ${PROGRAM}=${VERSION} ${PROGRAM}-luajit=${VERSION}

ENV PROGRAM=${PROGRAM}
ENV VERSION=${VERSION}

CMD ["tini", "--", "dnsdist", "--supervised", "--disable-syslog", "--log-timestamps"]

