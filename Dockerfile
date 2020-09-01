FROM node:10.22-alpine

LABEL description="Prebuilt w/ node ~10, yarn, lerna"

RUN apk add --no-cache git 
RUN yarn global add cross-env lerna 
RUN yarn config set workspaces-experimental true
RUN npm config set unsafe-perm true
