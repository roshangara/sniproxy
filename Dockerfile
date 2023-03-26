FROM alpine:3.17.0

LABEL maintainer="Mohammad Roshangara <mroshangara@gmail.com>"
LABEL description="Sniproxy HTTP/HTTPS proxy"
LABEL version="1.0"

RUN apk add --no-cache sniproxy

COPY ./src/sniproxy.conf /etc/sniproxy/sniproxy.conf

EXPOSE 80 443

CMD ["sniproxy", "-c", "/etc/sniproxy/sniproxy.conf", "-f"]
