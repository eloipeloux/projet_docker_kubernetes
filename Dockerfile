FROM node:12.18.4
COPY package.json .
RUN npm install
EXPOSE 8989
COPY public ./public
COPY src ./src
CMD [ "npm", "start", "--port", "8989" ]
