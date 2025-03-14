# Use an official Node.js runtime as a parent image
FROM 886473596958.dkr.ecr.us-west-2.amazonaws.com/node:18.20.3-alpine
# Set the working directory in the container
WORKDIR /app

# ... Copying files, installing dependencies ...
COPY package.json package-lock.json index.js ./

RUN npm install

# Expose the port your app is running on (e.g., 3000)
EXPOSE 3000

# Define the command to run your Node.js application
CMD [ "node", "index.js" ]