FROM alpine:3.8

RUN apk -v --update add \
        python \
        py-pip \
        ansible \
        groff \
        less \
        && \
    pip install awscli && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile=Dockerfile \
      org.label-schema.license=LGPL \
      org.label-schema.name=awesible \
      org.label-schema.version=$VERSION \
      org.label-schema.url=https://github.com/madhead/awesible \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url=https://github.com/madhead/awesible.git \
      org.label-schema.vcs-type=git
