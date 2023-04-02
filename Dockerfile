FROM node

WORKDIR /usr/src/app

COPY package.*json .
# cache all this instructions above and npm install to
RUN npm install

COPY . .

CMD ["npm", "run", "foo"]

# docker file its important, because with that,i create my custom images, docker compose substitue the docker run just

#the dependencies can be installed in my project ,and the volume gives to my container to rerun the npm install inside the docker container
