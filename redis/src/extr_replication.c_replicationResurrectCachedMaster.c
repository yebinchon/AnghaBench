
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int connection ;
struct TYPE_7__ {int flags; int authenticated; int * conn; int lastinteraction; } ;
struct TYPE_6__ {TYPE_2__* master; scalar_t__ repl_down_since; int repl_state; int unixtime; TYPE_2__* cached_master; } ;


 int CLIENT_CLOSE_AFTER_REPLY ;
 int CLIENT_CLOSE_ASAP ;
 int LL_WARNING ;
 int REPL_STATE_CONNECTED ;
 scalar_t__ clientHasPendingReplies (TYPE_2__*) ;
 int connSetPrivateData (int *,TYPE_2__*) ;
 scalar_t__ connSetReadHandler (int *,int ) ;
 scalar_t__ connSetWriteHandler (int *,int ) ;
 int errno ;
 int freeClientAsync (TYPE_2__*) ;
 int linkClient (TYPE_2__*) ;
 int readQueryFromClient ;
 int sendReplyToClient ;
 TYPE_1__ server ;
 int serverLog (int ,char*,int ) ;
 int strerror (int ) ;

void replicationResurrectCachedMaster(connection *conn) {
    server.master = server.cached_master;
    server.cached_master = ((void*)0);
    server.master->conn = conn;
    connSetPrivateData(server.master->conn, server.master);
    server.master->flags &= ~(CLIENT_CLOSE_AFTER_REPLY|CLIENT_CLOSE_ASAP);
    server.master->authenticated = 1;
    server.master->lastinteraction = server.unixtime;
    server.repl_state = REPL_STATE_CONNECTED;
    server.repl_down_since = 0;


    linkClient(server.master);
    if (connSetReadHandler(server.master->conn, readQueryFromClient)) {
        serverLog(LL_WARNING,"Error resurrecting the cached master, impossible to add the readable handler: %s", strerror(errno));
        freeClientAsync(server.master);
    }



    if (clientHasPendingReplies(server.master)) {
        if (connSetWriteHandler(server.master->conn, sendReplyToClient)) {
            serverLog(LL_WARNING,"Error resurrecting the cached master, impossible to add the writable handler: %s", strerror(errno));
            freeClientAsync(server.master);
        }
    }
}
