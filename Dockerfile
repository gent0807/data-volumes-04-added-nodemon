FROM node:14

ARG DEFAULT_PORT=80

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ARG DEFAULT_PORT=80
 
ENV PORT $DEFAULT_PORT

EXPOSE $PORT

CMD [ "npm", "start" ]