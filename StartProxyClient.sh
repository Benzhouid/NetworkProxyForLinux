#! /bin/sh
SVR_HOST=59.111.176.145
SVR_PORT=5438
KEY=YourKey
LOG_PATH=/root/NetworkProxyForLinux
JAR_PATH=/root/NetworkProxyForLinux
PRO_NAME=com.netease.mail.qiye.StartProxyApplication

for jar in ${JAR_PATH}/*.jar
do
CLASSPATH=$jar:$CLASSPATH
done

export CLASSPATH
export LANG="zh_CN.GBK"

while true ; do
    NUM=`ps -ef | grep ${PRO_NAME} | grep ${KEY} | grep -v grep| wc -l`
    if [ "${NUM}" -lt "9" ];then
    	nohup java ${PRO_NAME} ${SVR_HOST} ${SVR_PORT} ${KEY} >> ${LOG_PATH}/nohup-proxy-client.log 2>&1 &
    fi
    sleep 5
done
exit 0

