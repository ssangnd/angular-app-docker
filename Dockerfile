FROM node:18.15-alpine3.17
RUN npm install -g @angular/cli@15.2.4
# RUN addgroup app && adduser -S -G app app
# USER app
# RUN npm install -g npm@9.6.5
WORKDIR /app
COPY package*.json .
RUN npm install

# RUN npm unistall 
# RUN npm install @npmcli/fs

COPY . .
ENV API_PATH=http://api.localhost
EXPOSE 4200 
# CMD ["npm", "start"] 
ENTRYPOINT [ "ng", "serve", "--host", "0.0.0.0", "--disable-host-check"]