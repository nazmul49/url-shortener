#!/bin/sh

echo "rebuilding image, starting container, please check the logs with docker logs -f urlShortenerDb"

docker container rm -f url_shortener_db
docker image build -t url_shortener_db .
docker container run -d -p 3307:3306 --name url_shortener_db url_shortener_db
docker logs -f url_shortener_db
