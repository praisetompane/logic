FROM mcr.microsoft.com/devcontainers/python:3.11

WORKDIR /logic

COPY . .

RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install -y aspell

RUN pipenv install

