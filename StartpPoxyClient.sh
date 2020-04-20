#! /bin/sh
SVR_HOST=59.111.176.145
SVR_PORT=5438
KEY=Exn2bShsBcd7RaFQ94ypeHV2YsBFIgVX
SH_NAME=StartpPoxyClient
PRO_NAME=com.netease.mail.qiye.StartProxyApplication

while true ; do
    NUM=`ps -ef | grep ${PRO_NAME} | grep ${KEY} | grep -v grep| wc -l`
    if [ "${NUM}" -lt "9" ];then
        sh ${SH_NAME}.sh ${SVR_HOST} ${SVR_PORT} ${KEY} 
    fi
    sleep 5
done
exit 0
