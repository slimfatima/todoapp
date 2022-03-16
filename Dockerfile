FROM node:12.14.1-alpine3.11

RUN mkdir /todo-app

ADD . /todo-app

WORKDIR /todo-app

RUN npm install

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]