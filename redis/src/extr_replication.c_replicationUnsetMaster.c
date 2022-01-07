
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ repl_state; int slaveseldb; int unixtime; int repl_no_slaves_since; scalar_t__ master; int * masterhost; } ;


 int REDISMODULE_EVENT_MASTER_LINK_CHANGE ;
 int REDISMODULE_EVENT_REPLICATION_ROLE_CHANGED ;
 int REDISMODULE_EVENT_REPLROLECHANGED_NOW_MASTER ;
 int REDISMODULE_SUBEVENT_MASTER_LINK_DOWN ;
 scalar_t__ REPL_STATE_CONNECTED ;
 scalar_t__ REPL_STATE_NONE ;
 int cancelReplicationHandshake () ;
 int disconnectSlaves () ;
 int freeClient (scalar_t__) ;
 int moduleFireServerEvent (int ,int ,int *) ;
 int replicationDiscardCachedMaster () ;
 int sdsfree (int *) ;
 TYPE_1__ server ;
 int shiftReplicationId () ;

void replicationUnsetMaster(void) {
    if (server.masterhost == ((void*)0)) return;


    if (server.repl_state == REPL_STATE_CONNECTED)
        moduleFireServerEvent(REDISMODULE_EVENT_MASTER_LINK_CHANGE,
                              REDISMODULE_SUBEVENT_MASTER_LINK_DOWN,
                              ((void*)0));

    sdsfree(server.masterhost);
    server.masterhost = ((void*)0);




    shiftReplicationId();
    if (server.master) freeClient(server.master);
    replicationDiscardCachedMaster();
    cancelReplicationHandshake();




    disconnectSlaves();
    server.repl_state = REPL_STATE_NONE;





    server.slaveseldb = -1;





    server.repl_no_slaves_since = server.unixtime;


    moduleFireServerEvent(REDISMODULE_EVENT_REPLICATION_ROLE_CHANGED,
                          REDISMODULE_EVENT_REPLROLECHANGED_NOW_MASTER,
                          ((void*)0));
}
