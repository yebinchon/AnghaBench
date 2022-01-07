
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int conn; } ;
typedef TYPE_1__ clusterLink ;


 int NET_IP_STR_LEN ;
 int connPeerToString (int ,char*,int,int *) ;
 int memcpy (char*,char*,int) ;

void nodeIp2String(char *buf, clusterLink *link, char *announced_ip) {
    if (announced_ip[0] != '\0') {
        memcpy(buf,announced_ip,NET_IP_STR_LEN);
        buf[NET_IP_STR_LEN-1] = '\0';
    } else {
        connPeerToString(link->conn, buf, NET_IP_STR_LEN, ((void*)0));
    }
}
