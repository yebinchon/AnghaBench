
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int conn; int repl_ack_time; scalar_t__ repl_put_online_on_ack; int replstate; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {int unixtime; } ;


 scalar_t__ C_ERR ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int REDISMODULE_EVENT_REPLICA_CHANGE ;
 int REDISMODULE_SUBEVENT_REPLICA_CHANGE_ONLINE ;
 int SLAVE_STATE_ONLINE ;
 scalar_t__ connSetWriteHandler (int ,int ) ;
 int errno ;
 int freeClient (TYPE_1__*) ;
 int moduleFireServerEvent (int ,int ,int *) ;
 int refreshGoodSlavesCount () ;
 int replicationGetSlaveName (TYPE_1__*) ;
 int sendReplyToClient ;
 TYPE_2__ server ;
 int serverLog (int ,char*,int ) ;
 int strerror (int ) ;

void putSlaveOnline(client *slave) {
    slave->replstate = SLAVE_STATE_ONLINE;
    slave->repl_put_online_on_ack = 0;
    slave->repl_ack_time = server.unixtime;
    if (connSetWriteHandler(slave->conn, sendReplyToClient) == C_ERR) {
        serverLog(LL_WARNING,"Unable to register writable event for replica bulk transfer: %s", strerror(errno));
        freeClient(slave);
        return;
    }
    refreshGoodSlavesCount();

    moduleFireServerEvent(REDISMODULE_EVENT_REPLICA_CHANGE,
                          REDISMODULE_SUBEVENT_REPLICA_CHANGE_ONLINE,
                          ((void*)0));
    serverLog(LL_NOTICE,"Synchronization with replica %s succeeded",
        replicationGetSlaveName(slave));
}
