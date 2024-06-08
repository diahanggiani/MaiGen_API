# Gunakan image Node.js sebagai basis
FROM node:14

# Set working directory
WORKDIR /app

# Salin package.json (jika ada) dan install dependencies
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Expose port (sesuaikan dengan port yang digunakan aplikasi Anda)
EXPOSE 8080

# Start application
CMD [ "npm", "start" ]
