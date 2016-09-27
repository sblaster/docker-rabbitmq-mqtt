FROM rabbitmq:3.6

# Define environment variables.
ENV RABBITMQ_USER user
ENV RABBITMQ_PASSWORD user

RUN rabbitmq-plugins enable --offline rabbitmq_management
RUN rabbitmq-plugins enable --offline rabbitmq_mqtt

CMD ["/init.sh"]

EXPOSE 15672
EXPOSE 1883
