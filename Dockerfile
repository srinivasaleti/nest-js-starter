FROM node:12 as install

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./
COPY yarn.lock ./

RUN yarn install
COPY . .

FROM install 

EXPOSE 8888

CMD yarn start