FROM debian:stretch-slim

RUN sed -i -e "s/deb.debian/ftp.hk.debian/g" /etc/apt/sources.list \
	&& echo "deb http://deb.debian.org/debian buster contrib" >> /etc/apt/sources.list \
	&&apt-get update \
	&& apt-get install -y --no-install-recommends \
	shutter \
	libgoo-canvas-perl \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "shutter" ]
