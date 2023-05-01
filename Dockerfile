FROM node:18.15-alpine3.17
WORKDIR /app
COPY . .
RUN npm install 
ENV API_PATH=http://api.localhost
EXPOSE 4200 
RUN addgroup app && adduser -S -G app app
USER app