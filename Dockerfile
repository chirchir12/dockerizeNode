# specify base image
FROM node:alpine

# create folder insde container called app
WORKDIR /usr/app  

# copy current directory to cotnain
COPY ./package.json ./
# install some dependencies
RUN npm install 
COPY ./ ./


# default command


CMD ["npm", "start"]
