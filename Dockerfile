FROM node:10-alpine
RUN mkdir -p /home/parth/Desktop/node_project/node_modules && chown -R node:node /home/parth/Desktop/node_project

WORKDIR /home/parth/Desktop/node_project

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "app.js" ]
