#BASE IMAGE
FROM ubuntu:16.04

MAINTAINER Stefano Campese "sircampdevelop@gmail.com"

#INSTALLING UPDATES AND DEPENDENCIES
RUN apt-get update && apt-get upgrade --yes
RUN apt-get install --yes curl
RUN apt-get install --yes apt-utils
RUN apt-get install --yes nano
RUN apt-get install --yes wget

#INSTALLING ERLANG AND ELIXIR
RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb 
RUN dpkg -i erlang-solutions_1.0_all.deb
RUN apt-get update
RUN apt-get install esl-erlang --yes
RUN apt-get install elixir --yes

#ADDING SOURCES FOLDER
VOLUME ["sources"]
ADD ./sources /sources

WORKDIR /sources 
