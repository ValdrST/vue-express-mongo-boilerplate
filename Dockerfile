FROM node:8.12

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json .
RUN npm i -g npm@6.4.1
RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000
