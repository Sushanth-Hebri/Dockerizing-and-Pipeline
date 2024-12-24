# Step 1: Use the official Nginx image
FROM nginx:alpine

# Step 2: Remove default files
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy your HTML file into the Nginx directory
COPY index.html /usr/share/nginx/html/

# Step 4: Expose port 80
EXPOSE 80

# Step 5: Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
