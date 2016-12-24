#!/bin/sh

FILE='BuildTools.jar'
ADDR='https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar'

bt_do () {
	
	echo "######## Building $1"
	java -jar $FILE --rev $1
	
}

wget -O $FILE $ADDR
bt_do '1.8'
bt_do '1.8.3'
bt_do '1.8.4'
bt_do '1.11'
bt_do '1.11.2'
