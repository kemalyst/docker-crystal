FROM ubuntu:16.04

ENV CRYSTAL_VERSION 0.23.0

RUN apt-get update -qq

RUN apt-get install -y --no-install-recommends build-essential curl ca-certificates git vim netcat libyaml-0-2 libreadline-dev libxml2-dev 

RUN apt-get install -y --no-install-recommends libsqlite3-dev libpq-dev libmysqlclient-dev

RUN curl -L https://github.com/crystal-lang/crystal/releases/download/$CRYSTAL_VERSION/crystal-$CRYSTAL_VERSION-1-linux-x86_64.tar.gz | tar xvz -C /usr/local/share/.

RUN ln -s /usr/local/share/crystal-$CRYSTAL_VERSION-1/bin/crystal /usr/local/bin/crystal

RUN mkdir -p /app/user
WORKDIR /app/user
