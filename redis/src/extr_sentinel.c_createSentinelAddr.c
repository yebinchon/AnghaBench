
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int port; int ip; } ;
typedef TYPE_1__ sentinelAddr ;
typedef int ip ;


 scalar_t__ ANET_ERR ;
 int EINVAL ;
 int ENOENT ;
 int NET_IP_STR_LEN ;
 scalar_t__ anetResolve (int *,char*,char*,int) ;
 int errno ;
 int sdsnew (char*) ;
 TYPE_1__* zmalloc (int) ;

sentinelAddr *createSentinelAddr(char *hostname, int port) {
    char ip[NET_IP_STR_LEN];
    sentinelAddr *sa;

    if (port < 0 || port > 65535) {
        errno = EINVAL;
        return ((void*)0);
    }
    if (anetResolve(((void*)0),hostname,ip,sizeof(ip)) == ANET_ERR) {
        errno = ENOENT;
        return ((void*)0);
    }
    sa = zmalloc(sizeof(*sa));
    sa->ip = sdsnew(ip);
    sa->port = port;
    return sa;
}
