
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int masterport; scalar_t__ repl_state; scalar_t__ master; int * masterhost; } ;


 int REDISMODULE_EVENT_MASTER_LINK_CHANGE ;
 int REDISMODULE_EVENT_REPLICATION_ROLE_CHANGED ;
 int REDISMODULE_EVENT_REPLROLECHANGED_NOW_REPLICA ;
 int REDISMODULE_SUBEVENT_MASTER_LINK_DOWN ;
 scalar_t__ REPL_STATE_CONNECT ;
 scalar_t__ REPL_STATE_CONNECTED ;
 int cancelReplicationHandshake () ;
 int disconnectAllBlockedClients () ;
 int disconnectSlaves () ;
 int freeClient (scalar_t__) ;
 int moduleFireServerEvent (int ,int ,int *) ;
 int replicationCacheMasterUsingMyself () ;
 int replicationDiscardCachedMaster () ;
 int sdsfree (int *) ;
 int * sdsnew (char*) ;
 TYPE_1__ server ;

void replicationSetMaster(char *ip, int port) {
    int was_master = server.masterhost == ((void*)0);

    sdsfree(server.masterhost);
    server.masterhost = sdsnew(ip);
    server.masterport = port;
    if (server.master) {
        freeClient(server.master);
    }
    disconnectAllBlockedClients();



    disconnectSlaves();
    cancelReplicationHandshake();


    if (was_master) {
        replicationDiscardCachedMaster();
        replicationCacheMasterUsingMyself();
    }


    moduleFireServerEvent(REDISMODULE_EVENT_REPLICATION_ROLE_CHANGED,
                          REDISMODULE_EVENT_REPLROLECHANGED_NOW_REPLICA,
                          ((void*)0));


    if (server.repl_state == REPL_STATE_CONNECTED)
        moduleFireServerEvent(REDISMODULE_EVENT_MASTER_LINK_CHANGE,
                              REDISMODULE_SUBEVENT_MASTER_LINK_DOWN,
                              ((void*)0));

    server.repl_state = REPL_STATE_CONNECT;
}
