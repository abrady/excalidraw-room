FROM node:12-alpine

WORKDIR /excalidraw-room

COPY package.json yarn.lock ./
RUN yarn

COPY tsconfig.json ./
COPY src ./src
COPY docker.sh ./
RUN npx tsc 

EXPOSE 80
#CMD ["yarn", "start"]
CMD ["sh", "docker.sh"]
