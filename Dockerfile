FROM alpine:3.10

LABEL maintainer="thore.guentel@tangogolf.de"

RUN apk add --update --no-cache icinga2 bash

COPY config.sh /opt/config.sh
RUN chmod +x /opt/config.sh
