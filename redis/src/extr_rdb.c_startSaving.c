
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pid; } ;


 int RDBFLAGS_AOF_PREAMBLE ;
 int REDISMODULE_EVENT_PERSISTENCE ;
 int REDISMODULE_SUBEVENT_PERSISTENCE_AOF_START ;
 int REDISMODULE_SUBEVENT_PERSISTENCE_RDB_START ;
 int REDISMODULE_SUBEVENT_PERSISTENCE_SYNC_RDB_START ;
 scalar_t__ getpid () ;
 int moduleFireServerEvent (int ,int,int *) ;
 TYPE_1__ server ;

void startSaving(int rdbflags) {

    int subevent;
    if (rdbflags & RDBFLAGS_AOF_PREAMBLE)
        subevent = REDISMODULE_SUBEVENT_PERSISTENCE_AOF_START;
    else if (getpid()!=server.pid)
        subevent = REDISMODULE_SUBEVENT_PERSISTENCE_RDB_START;
    else
        subevent = REDISMODULE_SUBEVENT_PERSISTENCE_SYNC_RDB_START;
    moduleFireServerEvent(REDISMODULE_EVENT_PERSISTENCE,subevent,((void*)0));
}
