
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ mstime_t ;
typedef int connection ;
struct TYPE_6__ {int flags; int cport; int ip; int name; scalar_t__ ping_sent; } ;
typedef TYPE_1__ clusterNode ;
struct TYPE_7__ {TYPE_1__* node; } ;
typedef TYPE_2__ clusterLink ;


 int CLUSTERMSG_TYPE_MEET ;
 int CLUSTERMSG_TYPE_PING ;
 int CLUSTER_NODE_MEET ;
 scalar_t__ CONN_STATE_CONNECTED ;
 int LL_DEBUG ;
 int LL_VERBOSE ;
 int clusterReadHandler ;
 int clusterSendPing (TYPE_2__*,int ) ;
 int connGetLastError (int *) ;
 TYPE_2__* connGetPrivateData (int *) ;
 scalar_t__ connGetState (int *) ;
 int connSetReadHandler (int *,int ) ;
 int freeClusterLink (TYPE_2__*) ;
 int serverLog (int ,char*,int ,int ,int ,...) ;

void clusterLinkConnectHandler(connection *conn) {
    clusterLink *link = connGetPrivateData(conn);
    clusterNode *node = link->node;


    if (connGetState(conn) != CONN_STATE_CONNECTED) {
        serverLog(LL_VERBOSE, "Connection with Node %.40s at %s:%d failed: %s",
                node->name, node->ip, node->cport,
                connGetLastError(conn));
        freeClusterLink(link);
        return;
    }


    connSetReadHandler(conn, clusterReadHandler);







    mstime_t old_ping_sent = node->ping_sent;
    clusterSendPing(link, node->flags & CLUSTER_NODE_MEET ?
            CLUSTERMSG_TYPE_MEET : CLUSTERMSG_TYPE_PING);
    if (old_ping_sent) {



        node->ping_sent = old_ping_sent;
    }





    node->flags &= ~CLUSTER_NODE_MEET;

    serverLog(LL_DEBUG,"Connecting with Node %.40s at %s:%d",
            node->name, node->ip, node->cport);
}
