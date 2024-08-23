FROM alpine:latest

# Install Node.js and npm
RUN apk add --update nodejs npm

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port on which the app will run
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]