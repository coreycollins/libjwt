FROM ubuntu:trusty
RUN apt-get update && \
    apt-get install -y --no-install-recommends --force-yes \
        build-essential \
        ca-certificates \
        cmake \
        curl \
        libcurl4-openssl-dev \
        libjansson-dev \
        pkg-config \
        unzip \
        autoconf \
        autotools-dev \
        automake \
        libtool \
        check

COPY . /root/libjwt
RUN cd /root/libjwt && \
    autoreconf -i && \
    ./configure && \
    make

ENTRYPOINT cd /root/libjwt && make check
