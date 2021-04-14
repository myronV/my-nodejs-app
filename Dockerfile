FROM node:14-alpine
# Attach working directory
WORKDIR /app

# The base node image sets a very verbose log level.
ENV NPM_CONFIG_LOGLEVEL warn

# Setup and install node_modules.
COPY package.json /app
RUN npm install

#Copy source to workdir
COPY . /app

# Set the command to start the node server.
CMD node index.js

