FROM node:18.16-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm install -g typescript ts-node

RUN npm run build

ENV PORT=8080

EXPOSE 8080

CMD [ "npm", "start" ]
