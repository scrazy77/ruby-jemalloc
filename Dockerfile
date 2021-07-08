FROM ruby:2.7-slim

RUN apt-get update ; \
    apt-get install -y --no-install-recommends libjemalloc2 ; \
    rm -rf /var/lib/apt/lists/*

ENV LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libjemalloc.so.2
