FROM nginx:1.30.6-alpine

# The image fills /etc/nginx/templates/*.template with environment variables
# at start, so the server listens on $PORT (80 when it is not set).
ENV PORT=80
COPY templates/default.conf.template /etc/nginx/templates/default.conf.template
COPY site/ /usr/share/nginx/html/
