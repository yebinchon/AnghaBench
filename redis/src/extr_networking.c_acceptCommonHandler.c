
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int conninfo ;
typedef int connection ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_5__ {scalar_t__ maxclients; int stat_rejected_conn; int clients; } ;


 scalar_t__ C_ERR ;
 int LL_WARNING ;
 int UNUSED (char*) ;
 int clientAcceptHandler ;
 scalar_t__ connAccept (int *,int ) ;
 int connClose (int *) ;
 int connGetInfo (int *,char*,int) ;
 int connGetLastError (int *) ;
 int connGetPrivateData (int *) ;
 int connWrite (int *,char*,int ) ;
 TYPE_1__* createClient (int *) ;
 int freeClient (int ) ;
 scalar_t__ listLength (int ) ;
 TYPE_2__ server ;
 int serverLog (int ,char*,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void acceptCommonHandler(connection *conn, int flags, char *ip) {
    client *c;
    UNUSED(ip);





    if (listLength(server.clients) >= server.maxclients) {
        char *err = "-ERR max number of clients reached\r\n";





        if (connWrite(conn,err,strlen(err)) == -1) {

        }
        server.stat_rejected_conn++;
        connClose(conn);
        return;
    }


    if ((c = createClient(conn)) == ((void*)0)) {
        char conninfo[100];
        serverLog(LL_WARNING,
            "Error registering fd event for the new client: %s (conn: %s)",
            connGetLastError(conn),
            connGetInfo(conn, conninfo, sizeof(conninfo)));
        connClose(conn);
        return;
    }


    c->flags |= flags;
    if (connAccept(conn, clientAcceptHandler) == C_ERR) {
        char conninfo[100];
        serverLog(LL_WARNING,
                "Error accepting a client connection: %s (conn: %s)",
                connGetLastError(conn), connGetInfo(conn, conninfo, sizeof(conninfo)));
        freeClient(connGetPrivateData(conn));
        return;
    }
}
