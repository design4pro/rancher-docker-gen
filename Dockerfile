FROM alpine:edge
MAINTAINER Rafal Wolak <r.wolak@design4.pro> (@design4pro)

RUN apk add --no-cache ca-certificates
RUN apk add --no-cache nano
RUN apk add --no-cache unzip
ENV RANCHER_GEN_RELEASE v0.0.1

RUN wget -O /tmp/rancher-gen.zip  https://gitlab.com/design4pro/rancher-docker-gen/builds/artifacts/master/download?job=compile-go
RUN unzip /tmp/rancher-gen.zip -d /usr/local/bin \
	&& chmod +x /usr/local/bin/rancher-gen

ENTRYPOINT ["/usr/local/bin/rancher-gen"]
