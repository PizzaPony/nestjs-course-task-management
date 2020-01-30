#development is an alias for the image
FROM node:12.14.1 AS development
WORKDIR /app
COPY . .
#each file change will rerun npm install
RUN npm install
ENTRYPOINT [ "npm" ]
#default command to execute when image is run
CMD [ "run", "start:dev" ]