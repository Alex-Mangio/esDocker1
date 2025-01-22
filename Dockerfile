#FROM php:7.2
#RUN apt-get update
#RUN apt-get install -y git
#RUN git clone https://github.com/Alex-Mangio/esDocker1.git
#ENTRYPOINT git clone https://github.com/Alex-Mangio/esDocker1.git; php esDocker1/script.php
#docker build . -t prova_php:1.0

FROM ubuntu:22.04
RUN apt-get update; apt-get install -y git maven; git clone https://github.com/Amir-Rexhepi/ClientChaT.git
WORKDIR ClientChaT
RUN mvn clean install
ENTRYPOINT mvn exec:java -Dexec.mainClass="ClientChaT.Main";