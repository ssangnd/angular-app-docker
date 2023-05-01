FROM node:18.15-alpine3.17
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
ENV API_PATH=http://api.localhost
EXPOSE 4200 
# CMD ["npm", "start"] 
ENTRYPOINT [ "npm", "start"]