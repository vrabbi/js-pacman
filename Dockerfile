FROM node:7
COPY . /usr/src/app
EXPOSE 8080
ENV NEW_RELIC_NO_CONFIG_FILE=true
ENV NEW_RELIC_DISTRIBUTED_TRACING_ENABLED=true \
    NEW_RELIC_LOG=stdout
WORKDIR /usr/src/app
RUN ["npm", "install"]
ENTRYPOINT ["node", "app.js"]
