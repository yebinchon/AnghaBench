
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int repl_state; int unixtime; int repl_transfer_lastio; int * repl_transfer_s; int masterport; int masterhost; scalar_t__ tls_replication; } ;


 scalar_t__ C_ERR ;
 int C_OK ;
 int LL_WARNING ;
 int NET_FIRST_BIND_ADDR ;
 int REPL_STATE_CONNECTING ;
 int connClose (int *) ;
 scalar_t__ connConnect (int *,int ,int ,int ,int ) ;
 int * connCreateSocket () ;
 int * connCreateTLS () ;
 int connGetLastError (int *) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,int ) ;
 int syncWithMaster ;

int connectWithMaster(void) {
    server.repl_transfer_s = server.tls_replication ? connCreateTLS() : connCreateSocket();
    if (connConnect(server.repl_transfer_s, server.masterhost, server.masterport,
                NET_FIRST_BIND_ADDR, syncWithMaster) == C_ERR) {
        serverLog(LL_WARNING,"Unable to connect to MASTER: %s",
                connGetLastError(server.repl_transfer_s));
        connClose(server.repl_transfer_s);
        server.repl_transfer_s = ((void*)0);
        return C_ERR;
    }


    server.repl_transfer_lastio = server.unixtime;
    server.repl_state = REPL_STATE_CONNECTING;
    return C_OK;
}
