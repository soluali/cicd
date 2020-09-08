FROM centos:latest

RUN yum -y update && \
    yum -y install python3-pip python36-devel && yum clean all

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

COPY . /app

ENV FLASK_APP app.py

ENTRYPOINT FLASK_APP=/app/app.py flask run --host=0.0.0.0
