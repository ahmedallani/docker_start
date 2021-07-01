FROM node:14.17-alpine
RUN mkdir  /client
WORKDIR /client
COPY package.json package-lock.json /client/
RUN npm install
COPY . /client
EXPOSE 3000
