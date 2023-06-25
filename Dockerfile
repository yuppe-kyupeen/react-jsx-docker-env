FROM node:18

RUN mkdir /app && chown node:node /app
WORKDIR /app

USER node

COPY --chown=node:node package.json yarn.lock ./

RUN yarn install

COPY --chown=node:node . .

EXPOSE 5173

CMD [ "yarn", "dev" ]