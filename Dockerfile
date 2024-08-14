FROM node:18

WORKDIR /usr/src/app

COPY . .

RUN npm install

RUN npm run build

WORKDIR /usr/src/app/backend

RUN npm install

EXPOSE 3000

CMD ["node", "index.js"]