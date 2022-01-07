
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int loading; size_t loading_total_bytes; scalar_t__ loading_loaded_bytes; int loading_start_time; } ;


 int RDBFLAGS_AOF_PREAMBLE ;
 int RDBFLAGS_REPLICATION ;
 int REDISMODULE_EVENT_LOADING ;
 int REDISMODULE_SUBEVENT_LOADING_AOF_START ;
 int REDISMODULE_SUBEVENT_LOADING_RDB_START ;
 int REDISMODULE_SUBEVENT_LOADING_REPL_START ;
 int moduleFireServerEvent (int ,int,int *) ;
 TYPE_1__ server ;
 int time (int *) ;

void startLoading(size_t size, int rdbflags) {

    server.loading = 1;
    server.loading_start_time = time(((void*)0));
    server.loading_loaded_bytes = 0;
    server.loading_total_bytes = size;


    int subevent;
    if (rdbflags & RDBFLAGS_AOF_PREAMBLE)
        subevent = REDISMODULE_SUBEVENT_LOADING_AOF_START;
    else if(rdbflags & RDBFLAGS_REPLICATION)
        subevent = REDISMODULE_SUBEVENT_LOADING_REPL_START;
    else
        subevent = REDISMODULE_SUBEVENT_LOADING_RDB_START;
    moduleFireServerEvent(REDISMODULE_EVENT_LOADING,subevent,((void*)0));
}
