FROM node:0.12.6

USER root

RUN mkdir -p /opt/app
WORKDIR /opt/app
ADD . /opt/app

# without package.json
RUN npm install express

EXPOSE 3000

CMD [ "node","main.js" ]
