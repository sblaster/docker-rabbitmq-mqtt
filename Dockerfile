FROM rabbitmq:3.6

RUN rabbitmqctl add_user $RABBITMQ_USER $RABBITMQ_PASSWORD 2>/dev/null
RUN rabbitmqctl set_user_tags $RABBITMQ_USER administrator
RUN rabbitmqctl set_permissions -p / $RABBITMQ_USER  ".*" ".*" ".*"
RUN echo "*** User '$RABBITMQ_USER' with password '$RABBITMQ_PASSWORD' completed. ***"

RUN rabbitmq-plugins enable --offline rabbitmq_management
RUN rabbitmq-plugins enable --offline rabbitmq_mqtt

EXPOSE 15672
EXPOSE 1883
