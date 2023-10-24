FROM node:16

WORKDIR /app

COPY ./server/package*.json ./

RUN npm install

COPY ./server .

RUN npm install -g ts-node

ENV PORT=3553

CMD [ "ts-node", "./index.ts" ]

EXPOSE 3553