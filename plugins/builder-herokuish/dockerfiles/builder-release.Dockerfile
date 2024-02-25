ARG APP_IMAGE
FROM $APP_IMAGE

ARG DOKKU_APP_USER herokuishuser
COPY --chown=$DOKKU_APP_USER 00-global-env.sh 01-app-env.sh /app/.profile.d/
RUN chown -R $DOKKU_APP_USER:$DOKKU_APP_USER /app
USER $DOKKU_APP_USER
