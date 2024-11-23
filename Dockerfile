
FROM node:16

FROM node:${NODE_VERSION}-alpine


ENV NODE_ENV production


WORKDIR /usr/src/app


COPY package*.json ./


RUN npm install


COPY . .


EXPOSE 3000


CMD ["npm", "start"]
