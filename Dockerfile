FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.5.0.pre.rc4

RUN gem install cfer --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cfer"]
CMD ["--help"]
