# Use the official lightweight Nginx image
FROM nginx:alpine

# Copy the custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy all the website files to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/
COPY index-en.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/
COPY jairo_photo.jpg /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]