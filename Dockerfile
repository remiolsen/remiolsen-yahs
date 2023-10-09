FROM rockylinux:8.7-minimal

LABEL author="Remi-Andre Olsen" \
      maintainer="remi-andre.olsen@scilifelab.se" \
      homepage="https://github.com/remiolsen/remiolsen-yahs"

RUN microdnf install wget unzip gcc gcc-c++ autoconf automake glibc-devel zlib-devel make && \
cd /opt && wget https://github.com/c-zhou/yahs/archive/2630cff2d247d794e8e776ee42f8d45ee1e9d3cb.zip && \
unzip 2630cff2d247d794e8e776ee42f8d45ee1e9d3cb.zip && cd yahs-2630cff2d247d794e8e776ee42f8d45ee1e9d3cb && make


ENV PATH="/opt/yahs-2630cff2d247d794e8e776ee42f8d45ee1e9d3cb/:$PATH"
