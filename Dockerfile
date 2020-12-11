FROM node:14.5

RUN mkdir -p /www/web-monitor

WORKDIR /www/web-monitor

COPY package.json /www/web-monitor/package.json
RUN cd /www/web-monitor
RUN npm i
COPY . /www/web-monitor
RUN npm run build

EXPOSE 7001
CMD npm start