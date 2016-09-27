FROM rabbitmq:3.6

# Define environment variables.
ENV RABBITMQ_USER user
ENV RABBITMQ_PASSWORD user

RUN rabbitmq-plugins enable --offline rabbitmq_management
RUN rabbitmq-plugins enable --offline rabbitmq_mqtt
RUN echo "*** User '$RABBITMQ_USER' with password '$RABBITMQ_PASSWORD' completed. ***" ; \

EXPOSE 15672
EXPOSE 1883
