#!/bin/sh

cd ${INSTALL_DIR}

if [[ $JAVA_OPTS ]]; then
	JAVA_OPTS=$JAVA_OPTS
else
  JAVA_OPTS="-Xms32m -Xmx64m -XX:-UseGCOverheadLimit"
fi

if [[ $DB_HOST ]]; then
	DB_HOST=$DB_HOST
else
  DB_HOST="127.0.0.1"
fi
if [[ $DB_DATABASE ]]; then
	DB_DATABASE=$DB_DATABASE
else
  DB_DATABASE="test"
fi
if [[ $DB_USERNAME ]]; then
	DB_USERNAME=$DB_USERNAME
else
  DB_USERNAME="test"
fi
if [[ $DB_PASSWORD ]]; then
	DB_PASSWORD=$DB_PASSWORD
else
  DB_PASSWORD="test123"
fi
ADAPTER_OPTS="--spring.datasource.url=jdbc:mysql://${DB_HOST}:3306/${DB_DATABASE}?autoReconnect=true&useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=CONVERT_TO_NULL&useSSL=false&serverTimezone=CTT --spring.datasource.username=${DB_USERNAME} --spring.datasource.password=${DB_PASSWORD}"

if [[ $LOG_PATH ]]; then
	ADAPTER_OPTS=" $ADAPTER_OPTS --log.path=$LOG_PATH"
fi

java $JAVA_OPTS -jar app.jar $ADAPTER_OPTS
