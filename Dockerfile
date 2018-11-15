# This is a comment
FROM node:8.12.0-jessie
ENV PUERTO1 3001
ENV PUERTO2 3002
RUN mkdir /app
COPY app.tar.gz  /app/
WORKDIR /app
RUN tar zxf app.tar.gz  && rm -f app.tar.gz && apt-get update && apt-get install -y apt-utils && apt-get install -y libsasl2-dev && npm install && npm audit fix --force
EXPOSE $PUERTO1 $PUERTO2
CMD ["npm", "start"]