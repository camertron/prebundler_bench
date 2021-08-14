#! /bin/bash

docker build \
    --no-cache \
    -f Dockerfile \
    -t prebundler_test:latest .

docker build \
    --no-cache \
    --build-arg PREBUNDLER_ACCESS_KEY=${PREBUNDLER_ACCESS_KEY} \
    --build-arg PREBUNDLER_ACCESS_SECRET=${PREBUNDLER_ACCESS_SECRET} \
    -f Dockerfile-pre \
    -t prebundler_test:pre-latest .
