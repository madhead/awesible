FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install software-properties-common -y && \
    apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install ansible -y && \
    apt-get install python-pip -y && \
    pip install awscli

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile=Dockerfile \
      org.label-schema.license=LGPL \
      org.label-schema.name=awesible \
      org.label-schema.version=$VERSION \
      org.label-schema.url=https://github.com/madhead/awesible \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url=https://github.com/madhead/awesible.git \
      org.label-schema.vcs-type=git
