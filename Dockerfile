# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
# and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your application's source code to the working directory
COPY . .

# Expose the port your application listens on
EXPOSE 3000 

# Command to run your application
CMD [ "node", "server.js" ]