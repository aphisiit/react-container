FROM node:18.14.0-alpine3.17 as builder
USER root

# RUN npm install --global yarn
RUN mkdir -p /opt/app-builder

WORKDIR /opt/app-builder

ADD . .

RUN yarn && yarn build

FROM bitnami/nginx:1.23.1
USER root

RUN mkdir -p /opt/app-builder

RUN apt update && apt-get install curl -y

COPY --from=builder /opt/app-builder/build /app
COPY infrastructure/nginx-server.conf /opt/bitnami/nginx/conf/server_blocks

EXPOSE 8080