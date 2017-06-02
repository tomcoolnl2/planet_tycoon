FROM node:8.0.0

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# set node defaults for production
ARG NODE_ENV=dev
ENV NODE_ENV $NODE_ENV

# run NPM and set path
ENV PATH /usr/src/app/node_modules/.bin:$PATH

EXPOSE 1666

CMD ["./run-start.sh"]
