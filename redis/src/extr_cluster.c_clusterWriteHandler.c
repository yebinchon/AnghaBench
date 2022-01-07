
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
typedef int connection ;
struct TYPE_4__ {int conn; int sndbuf; } ;
typedef TYPE_1__ clusterLink ;


 int LL_DEBUG ;
 char* connGetLastError (int *) ;
 TYPE_1__* connGetPrivateData (int *) ;
 int connSetWriteHandler (int ,int *) ;
 int connWrite (int *,int ,scalar_t__) ;
 int handleLinkIOError (TYPE_1__*) ;
 scalar_t__ sdslen (int ) ;
 int sdsrange (int ,int,int) ;
 int serverLog (int ,char*,char*) ;

void clusterWriteHandler(connection *conn) {
    clusterLink *link = connGetPrivateData(conn);
    ssize_t nwritten;

    nwritten = connWrite(conn, link->sndbuf, sdslen(link->sndbuf));
    if (nwritten <= 0) {
        serverLog(LL_DEBUG,"I/O error writing to node link: %s",
            (nwritten == -1) ? connGetLastError(conn) : "short write");
        handleLinkIOError(link);
        return;
    }
    sdsrange(link->sndbuf,nwritten,-1);
    if (sdslen(link->sndbuf) == 0)
        connSetWriteHandler(link->conn, ((void*)0));
}
