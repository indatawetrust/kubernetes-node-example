FROM node:8

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

ENV PATH=$PATH:/home/node/.npm-global/bin

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

ADD index.js ./

ADD package.json ./

RUN npm install

RUN npm install --global --unsafe-perm @cond/webrtc-test@latest

CMD ["webrtc-test", "-v"]
