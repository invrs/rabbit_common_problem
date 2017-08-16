FROM elixir:1.5.1-alpine
MAINTAINER Michael Schaefermeyer <michael.schaefermeyer@gmail.com>

RUN apk add --update make gcc

ADD . /app

WORKDIR /app

RUN mix local.hex --force && mix local.rebar --force

RUN mix hex.info
RUN mix deps.get
RUN mix deps.compile rabbit_common
RUN mix compile
