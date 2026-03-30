FROM node:20-slim

WORKDIR /app

COPY apps/api/package*.json ./
RUN npm install

COPY apps/api/ .

RUN npm run build 2>/dev/null || true

EXPOSE 3002

CMD ["node", "dist/index.js"]
