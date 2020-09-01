FROM node:10.22-alpine

LABEL version="1.0"
LABEL description="Prebuilt w/ node ~10, yarn, lerna"

RUN apk add --no-cache git && npm i yarn -g --loglevel notice && yarn global add cross-env lerna && npx yarn config set workspaces-experimental true
RUN npm config set unsafe-perm true
