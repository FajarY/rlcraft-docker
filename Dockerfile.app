FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install openjdk-8-jre-headless -y

RUN mkdir /app
WORKDIR /app

COPY ./app .

CMD [ "java", "-Xms1024M", "-Xmx4096M", "-jar", "forge-1.12.2-14.23.5.2860.jar", "nogui" ]