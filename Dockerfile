FROM node:alpine
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY . .
RUN chmod 777 ./jenkins/scripts
EXPOSE 3000
CMD npm start