FROM debian:jessie-slim

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/testing main" | tee /etc/apt/sources.list.d/mongodb-org-3.6.list
RUN apt-get update
RUN apt-get install -y mongodb-org

VOLUME /var/lib/mongodb
VOLUME /var/log/mongodb
VOLUME /data/db

EXPOSE 27017

CMD ["mongod"]


