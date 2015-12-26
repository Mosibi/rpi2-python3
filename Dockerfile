FROM armbuild/debian:jessie

MAINTAINER Richard Arends <richard@mosibi.nl>

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
	python3.4 \
	python3.4-dev \
	python3.4-minimal \
	ca-certificates \
	curl \
	git \
	g++ \
	make \
	autoconf \
	cython3 \
	&& rm -rf /var/lib/apt/lists/*

RUN curl --insecure https://bootstrap.pypa.io/get-pip.py | python3.4
