FROM node:13.7

WORKDIR /var/www/html

COPY ./src/package*.json ./

RUN npm install --legacy-peer-deps
RUN npm run dev
COPY . .
EXPOSE 3000 
CMD ["npm", "run dev"] 