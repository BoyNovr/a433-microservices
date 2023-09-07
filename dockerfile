#Menggunakan image node js v14 dari Alpine
FROM node:14-alpine

#Membuat working directory di container
WORKDIR /app

#Copy semua berkas dari local working directory ke container working directory
COPY . .

#aplikasi berjalan dalam production mode dan menggunakan item-db container sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

#Menginstal dependencies dan build aplikasi.
RUN npm install --production --unsafe-perm && npm run build

#jalankan server
CMD [ "npm", "start" ] 

#Publish Port
EXPOSE 8080