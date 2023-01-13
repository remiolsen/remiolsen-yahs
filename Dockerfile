FROM rockylinux:8.7-minimal

LABEL author="Remi-Andre Olsen" \
      maintainer="remi-andre.olsen@scilifelab.se" \
      homepage="https://github.com/remiolsen/"

RUN microdnf install wget unzip gcc gcc-c++ autoconf automake glibc-devel zlib-devel make && \
cd /opt && wget https://github.com/c-zhou/yahs/archive/42b8421115340ee7b9d52ff63e7f54d28084871c.zip && \
unzip 42b8421115340ee7b9d52ff63e7f54d28084871c.zip && cd yahs-42b8421115340ee7b9d52ff63e7f54d28084871c && make


ENV PATH="/opt/yahs-42b8421115340ee7b9d52ff63e7f54d28084871c/:$PATH"
