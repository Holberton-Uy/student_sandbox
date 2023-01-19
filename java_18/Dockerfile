FROM ubuntu:20.04

RUN rm -vf /var/lib/apt/lists/*
RUN apt update && apt upgrade -y
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Los_Angeles
RUN apt-get install -y tzdata


# Basics
RUN apt install -y curl
RUN apt install -y git
RUN apt install -y vim
RUN apt install -y shellcheck
RUN apt install -y wget

# MySQL
RUN apt install -y mysql-server
RUN usermod -d /var/lib/mysql/ mysql
RUN apt install -y libmysqlclient-dev

# Install Java - manual to avoid the NFTC prompt
RUN apt install -y libc6-i386 libc6-x32
RUN mkdir -p /tmp/java
RUN cd /tmp/java ; curl -LO "https://download.oracle.com/java/18/archive/jdk-18.0.2.1_linux-x64_bin.tar.gz"
RUN tar xvf /tmp/java/*.tar.gz -C /tmp/java/.
RUN mv /tmp/java/jdk-18* /opt/.
RUN rm -rf /tmp/java

ENV JAVA_HOME=/opt/jdk-18.0.2.1
ENV PATH=$PATH:$JAVA_HOME/bin

RUN apt install -y sudo
