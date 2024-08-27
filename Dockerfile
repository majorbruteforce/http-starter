FROM debian:buster-slim

WORKDIR /app

RUN apt-get update && \
apt-get install -y build-essential && \
rm -rf /var/lib/apt/lists/*

COPY http_server.c .

RUN gcc -o http_server http_server.c

EXPOSE 8080

CMD ["./http_server"]
