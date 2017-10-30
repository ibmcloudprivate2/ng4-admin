FROM node:6.11.5-alpine
MAINTAINER Jaric Sng <jaric.sng@gmail.com>

# install deps
ADD package.json /tmp/package.json
RUN cd /tmp && npm install

# Copy deps
RUN mkdir -p /opt/ngx-admin && cp -a /tmp/node_modules /opt/ngx-admin

# Setup workdir
WORKDIR /opt/ngx-admin
COPY . /opt/ngx-admin

# run
EXPOSE 3000
CMD ["npm", "start"]
