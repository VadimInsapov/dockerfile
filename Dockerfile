FROM node:latest

WORKDIR /usr/src/app

LABEL authors="vadim"

EXPOSE 3000

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/alex-arriaga/node-js-restful-api-example.git

WORKDIR /usr/src/app/node-js-restful-api-example/server

RUN npm install

CMD ["node", "server.js"]

