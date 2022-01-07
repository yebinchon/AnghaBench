
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int connection ;
struct TYPE_4__ {int * conn; } ;
typedef TYPE_1__ clusterLink ;


 scalar_t__ CONN_STATE_CONNECTED ;
 int LL_VERBOSE ;
 int clusterReadHandler ;
 int connClose (int *) ;
 int connGetLastError (int *) ;
 scalar_t__ connGetState (int *) ;
 int connSetPrivateData (int *,TYPE_1__*) ;
 int connSetReadHandler (int *,int ) ;
 TYPE_1__* createClusterLink (int *) ;
 int serverLog (int ,char*,int ) ;

__attribute__((used)) static void clusterConnAcceptHandler(connection *conn) {
    clusterLink *link;

    if (connGetState(conn) != CONN_STATE_CONNECTED) {
        serverLog(LL_VERBOSE,
                "Error accepting cluster node connection: %s", connGetLastError(conn));
        connClose(conn);
        return;
    }






    link = createClusterLink(((void*)0));
    link->conn = conn;
    connSetPrivateData(conn, link);


    connSetReadHandler(conn, clusterReadHandler);
}
