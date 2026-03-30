FROM node:20-slim

WORKDIR /app

COPY apps/api/package*.json ./
RUN npm install

COPY apps/api/ .

RUN npm run build

EXPOSE 3002

CMD ["node", "dist/src/index.js"]
