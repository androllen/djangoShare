# pull official base image
FROM python:3.8.0-alpine

# set work directory
WORKDIR /usr/src/share

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
COPY ./requirements.txt /usr/src/share/requirements.txt
RUN pip3 install -r requirements.txt

# copy project
COPY ./ /usr/src/share/