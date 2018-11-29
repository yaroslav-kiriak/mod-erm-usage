FROM folioci/openjdk8-jre:latest

ENV VERTICLE_FILE mod-erm-usage-server-fat.jar

# Set the location of the verticles
ENV VERTICLE_HOME /usr/verticles
ENV DB_USERNAME folio_admin
ENV DB_PASSWORD folio_admin
ENV DB_HOST 172.17.0.1
ENV DB_PORT 5432
ENV DB_DATABASE okapi_modules

# Copy your fat jar to the container
COPY target/${VERTICLE_FILE} ${VERTICLE_HOME}/${VERTICLE_FILE}

# Expose this port locally in the container.
EXPOSE 8081
