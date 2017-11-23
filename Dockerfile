FROM debian:jessie

MAINTAINER Alexey Kornilov <alexey.kornilov@kavolorn.ru>

EXPOSE 22000 8384

RUN apt-get update  \
    && apt-get -y dist-upgrade \
    && apt-get -y install curl apt-transport-https \
    && curl -s https://syncthing.net/release-key.txt | apt-key add - \
    && echo "deb http://apt.syncthing.net/ syncthing release" | tee /etc/apt/sources.list.d/syncthing.list \
    && apt-get update \
    && apt-get -y install syncthing=0.14.40
