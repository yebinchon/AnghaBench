
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int connection ;
typedef int cip ;
typedef void aeEventLoop ;
struct TYPE_2__ {scalar_t__ tls_cluster; int neterr; scalar_t__ loading; int * masterhost; } ;


 int ANET_ERR ;
 scalar_t__ C_ERR ;
 scalar_t__ EWOULDBLOCK ;
 int LL_VERBOSE ;
 int MAX_CLUSTER_ACCEPTS_PER_CALL ;
 int NET_IP_STR_LEN ;
 int UNUSED (void*) ;
 int anetTcpAccept (int ,int,char*,int,int*) ;
 int clusterConnAcceptHandler ;
 scalar_t__ connAccept (int *,int ) ;
 int connClose (int *) ;
 int * connCreateAcceptedSocket (int) ;
 int * connCreateAcceptedTLS (int,int) ;
 int connEnableTcpNoDelay (int *) ;
 int connGetLastError (int *) ;
 int connNonBlock (int *) ;
 scalar_t__ errno ;
 TYPE_1__ server ;
 int serverLog (int ,char*,char*,...) ;

void clusterAcceptHandler(aeEventLoop *el, int fd, void *privdata, int mask) {
    int cport, cfd;
    int max = MAX_CLUSTER_ACCEPTS_PER_CALL;
    char cip[NET_IP_STR_LEN];
    UNUSED(el);
    UNUSED(mask);
    UNUSED(privdata);



    if (server.masterhost == ((void*)0) && server.loading) return;

    while(max--) {
        cfd = anetTcpAccept(server.neterr, fd, cip, sizeof(cip), &cport);
        if (cfd == ANET_ERR) {
            if (errno != EWOULDBLOCK)
                serverLog(LL_VERBOSE,
                    "Error accepting cluster node: %s", server.neterr);
            return;
        }

        connection *conn = server.tls_cluster ? connCreateAcceptedTLS(cfd,1) : connCreateAcceptedSocket(cfd);
        connNonBlock(conn);
        connEnableTcpNoDelay(conn);


        serverLog(LL_VERBOSE,"Accepting cluster node connection from %s:%d", cip, cport);




        if (connAccept(conn, clusterConnAcceptHandler) == C_ERR) {
            serverLog(LL_VERBOSE,
                    "Error accepting cluster node connection: %s",
                    connGetLastError(conn));
            connClose(conn);
            return;
        }
    }
}
