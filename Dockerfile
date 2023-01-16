FROM ubuntu:20.04
MAINTAINER Guillaume Salva <guillaume@holbertonschool.com>
RUN rm -vf /var/lib/apt/lists/*
RUN apt-get update

# Fix tzdata
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Los_Angeles
RUN apt-get install -y tzdata

# curl/wget/git
RUN apt-get install -y curl wget git
# vim/emacs
RUN apt-get install -y vim emacs
# Shell
RUN apt-get install -y bc
RUN apt-get install -y shellcheck
# C
RUN apt-get install -y build-essential gcc
RUN apt-get install -y valgrind
RUN apt-get install -y ltrace
RUN apt-get install -y strace
RUN apt-get install -y libc6-dev-i386
RUN apt-get install -y libssl-dev
RUN apt-get install -y nasm
# Sysadmin
RUN apt-get install -y nmap
RUN apt-get install -y dnsutils
RUN apt-get install -y netcat
RUN apt-get install -y iputils-ping

# MySQL
RUN apt-get install -y mysql-server
RUN usermod -d /var/lib/mysql/ mysql
RUN apt-get install -y libmysqlclient-dev

# Brainfuck
RUN apt-get install -y bf

# Python
RUN apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
# Pip
RUN apt-get install -y python3-pip
RUN pip3 install pycodestyle
RUN pip3 install pep8

# NumPy
RUN pip3 install numpy==1.15.0
RUN pip3 install SQLAlchemy
RUN pip3 install sqlalchemy
RUN pip3 install sqlalchemy --upgrade
RUN pip3 install mysqlclient
RUN pip3 install psutil

# Ruby
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install software-properties-common
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get install -y ruby ruby-dev

RUN apt-get install -y lsof

RUN apt-get install -y sudo

# Create test user
RUN useradd -M correction_tester

# Set the locale
RUN apt-get install -y locales
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-81~
