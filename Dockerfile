FROM node:18-alpine

# Set working directory
WORKDIR /app/backend

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy backend code
COPY / .

# Hugging Face Spaces ka standard port expose karein
EXPOSE 7860

# Environment variables update karein
ENV PORT=7860
ENV NODE_ENV=production

# Start the backend
CMD ["node", "server.js"]