FROM node:16-slim

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY . .

EXPOSE 80

CMD ["node", "app.js"]
