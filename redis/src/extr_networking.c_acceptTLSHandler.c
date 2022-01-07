
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cip ;
typedef void aeEventLoop ;
struct TYPE_2__ {int tls_auth_clients; int neterr; } ;


 int ANET_ERR ;
 scalar_t__ EWOULDBLOCK ;
 int LL_VERBOSE ;
 int LL_WARNING ;
 int MAX_ACCEPTS_PER_CALL ;
 int NET_IP_STR_LEN ;
 int UNUSED (void*) ;
 int acceptCommonHandler (int ,int ,char*) ;
 int anetTcpAccept (int ,int,char*,int,int*) ;
 int connCreateAcceptedTLS (int,int ) ;
 scalar_t__ errno ;
 TYPE_1__ server ;
 int serverLog (int ,char*,char*,...) ;

void acceptTLSHandler(aeEventLoop *el, int fd, void *privdata, int mask) {
    int cport, cfd, max = MAX_ACCEPTS_PER_CALL;
    char cip[NET_IP_STR_LEN];
    UNUSED(el);
    UNUSED(mask);
    UNUSED(privdata);

    while(max--) {
        cfd = anetTcpAccept(server.neterr, fd, cip, sizeof(cip), &cport);
        if (cfd == ANET_ERR) {
            if (errno != EWOULDBLOCK)
                serverLog(LL_WARNING,
                    "Accepting client connection: %s", server.neterr);
            return;
        }
        serverLog(LL_VERBOSE,"Accepted %s:%d", cip, cport);
        acceptCommonHandler(connCreateAcceptedTLS(cfd, server.tls_auth_clients),0,cip);
    }
}
