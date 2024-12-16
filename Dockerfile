#base image for react   
FROM node:20-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY public/ public/
COPY src/ src/
RUN npm run build
# serve the app with a lightweight web server ,serve package 
RUN npm install -g serve
#specifies the default command to run when the container starts.
CMD ["serve", "-s", "build"]
EXPOSE 3000
