FROM node:16.11.1-buster-slim

WORKDIR /usr/src/app

ENV NODE_ENV production

COPY package*.json ./
RUN npm ci --production

COPY . .

RUN chown node:node /usr/src/app
USER node

CMD ["node", "."]