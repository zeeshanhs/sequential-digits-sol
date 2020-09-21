FROM python:3.7-alpine
MAINTAINER Zeeshan Siddiqui

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt


RUN pip install -r /requirements.txt


RUN mkdir /src

COPY ./src /src

RUN ls -la /src

WORKDIR /src

RUN ls -la