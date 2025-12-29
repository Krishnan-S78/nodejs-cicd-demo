# nodejs-cicd-demo/Dockerfile
FROM node:20-alpine

WORKDIR /app

#Copy package files first for better caching
COPY package*.json ./
RUN npm ci --only=production

# Copy source code

COPY . .

# Expose port (check your app's port in package.json or server.js)
EXPOSE 3000

#Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:3000/ || exit 1

CMD ["npm", "start"]
