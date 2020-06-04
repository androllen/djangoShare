# pull official base image
FROM python:3.8.0-alpine

# set work directory
WORKDIR /usr/src/share
COPY ./pip.conf /etc/pip.conf

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
COPY ./requirements.txt /usr/src/share/requirements.txt
RUN pip install -r requirements.txt

# copy project
COPY . /usr/src/share/