FROM python:3.7-slim
LABEL key="Eduardo Salazar" 

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
#RUN apk add --update --no-cache postgresql-client
#RUN apk add --update --no-cache --virtual .tmp-build-deps \
#        gcc libc-dev linux-headers postgresql-dev

RUN pip install -r /requirements.txt
#RUN apk del .tmp-build-deps

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN pip install pipenv

