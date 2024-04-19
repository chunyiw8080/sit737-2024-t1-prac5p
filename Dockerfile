FROM node:latest
WORKDIR /myapp
COPY myapp.zip .
RUN unzip myapp.zip \
&& rm -rf myapp.zip \
&& npm install

EXPOSE 3040

ENTRYPOINT ["node", "app2.js"]
