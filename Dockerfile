FROM node:21-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install --ignore-scripts

COPY bin ./bin
COPY public ./public
COPY routes ./routes
COPY app.js  ./

USER node

CMD ["npm", "start"]

EXPOSE 3000