FROM node:10.16-alpine

MAINTAINER Rich Roslund

RUN npm i yarn lerna -g --loglevel notice && npx yarn config set workspaces-experimental true
