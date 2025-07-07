#!/bin/bash
set -x
VAR=""
build_path="/u01/eirapp/edr/"
build="eir-edr.jar"
cd $build_path
status=`ps -ef | grep $build | grep java`
if [ "$status" != "$VAR" ]
then
 echo "Process Already Running"
else
 echo "Starting Process"
java -Dlog4j.configurationFile=file:./log4j2.xml -jar eir-edr.jar  --spring.config.location=file:./application.yml 1>/dev/null 2>/dev/null &
echo "Process Started"

fi

