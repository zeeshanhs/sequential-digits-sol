FROM python:3.7-alpine
MAINTAINER Zeeshan Siddiqui

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt


RUN pip install -r /requirements.txt


RUN mkdir /src

COPY ./src /src

RUN ls -l /src

WORKDIR /src

CMD ["manage.py", "-flag"]

RUN adduser -D user
USER user