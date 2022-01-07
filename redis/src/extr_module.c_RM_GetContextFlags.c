
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ maxmemory; scalar_t__ maxmemory_policy; scalar_t__ aof_state; scalar_t__ saveparamslen; scalar_t__ repl_state; scalar_t__ repl_slave_ro; int * masterhost; scalar_t__ loading; scalar_t__ cluster_enabled; } ;
struct TYPE_6__ {TYPE_1__* client; } ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_2__ RedisModuleCtx ;


 scalar_t__ AOF_OFF ;
 int CLIENT_LUA ;
 int CLIENT_MASTER ;
 int CLIENT_MULTI ;
 int C_ERR ;
 scalar_t__ MAXMEMORY_NO_EVICTION ;
 int REDISMODULE_CTX_FLAGS_ACTIVE_CHILD ;
 int REDISMODULE_CTX_FLAGS_AOF ;
 int REDISMODULE_CTX_FLAGS_CLUSTER ;
 int REDISMODULE_CTX_FLAGS_EVICT ;
 int REDISMODULE_CTX_FLAGS_LOADING ;
 int REDISMODULE_CTX_FLAGS_LUA ;
 int REDISMODULE_CTX_FLAGS_MASTER ;
 int REDISMODULE_CTX_FLAGS_MAXMEMORY ;
 int REDISMODULE_CTX_FLAGS_MULTI ;
 int REDISMODULE_CTX_FLAGS_OOM ;
 int REDISMODULE_CTX_FLAGS_OOM_WARNING ;
 int REDISMODULE_CTX_FLAGS_RDB ;
 int REDISMODULE_CTX_FLAGS_READONLY ;
 int REDISMODULE_CTX_FLAGS_REPLICATED ;
 int REDISMODULE_CTX_FLAGS_REPLICA_IS_CONNECTING ;
 int REDISMODULE_CTX_FLAGS_REPLICA_IS_ONLINE ;
 int REDISMODULE_CTX_FLAGS_REPLICA_IS_STALE ;
 int REDISMODULE_CTX_FLAGS_REPLICA_IS_TRANSFERRING ;
 int REDISMODULE_CTX_FLAGS_SLAVE ;
 scalar_t__ REPL_STATE_CONNECT ;
 scalar_t__ REPL_STATE_CONNECTED ;
 scalar_t__ REPL_STATE_CONNECTING ;
 scalar_t__ REPL_STATE_TRANSFER ;
 int getMaxmemoryState (int *,int *,int *,float*) ;
 scalar_t__ hasActiveChildProcess () ;
 TYPE_3__ server ;

int RM_GetContextFlags(RedisModuleCtx *ctx) {

    int flags = 0;

    if (ctx->client) {
        if (ctx->client->flags & CLIENT_LUA)
         flags |= REDISMODULE_CTX_FLAGS_LUA;
        if (ctx->client->flags & CLIENT_MULTI)
         flags |= REDISMODULE_CTX_FLAGS_MULTI;

        if (ctx->client->flags & CLIENT_MASTER)
         flags |= REDISMODULE_CTX_FLAGS_REPLICATED;
    }

    if (server.cluster_enabled)
        flags |= REDISMODULE_CTX_FLAGS_CLUSTER;

    if (server.loading)
        flags |= REDISMODULE_CTX_FLAGS_LOADING;


    if (server.maxmemory > 0) {
        flags |= REDISMODULE_CTX_FLAGS_MAXMEMORY;

        if (server.maxmemory_policy != MAXMEMORY_NO_EVICTION)
            flags |= REDISMODULE_CTX_FLAGS_EVICT;
    }


    if (server.aof_state != AOF_OFF)
        flags |= REDISMODULE_CTX_FLAGS_AOF;
    if (server.saveparamslen > 0)
        flags |= REDISMODULE_CTX_FLAGS_RDB;


    if (server.masterhost == ((void*)0)) {
        flags |= REDISMODULE_CTX_FLAGS_MASTER;
    } else {
        flags |= REDISMODULE_CTX_FLAGS_SLAVE;
        if (server.repl_slave_ro)
            flags |= REDISMODULE_CTX_FLAGS_READONLY;


        if (server.repl_state == REPL_STATE_CONNECT ||
            server.repl_state == REPL_STATE_CONNECTING)
        {
            flags |= REDISMODULE_CTX_FLAGS_REPLICA_IS_CONNECTING;
        } else if (server.repl_state == REPL_STATE_TRANSFER) {
            flags |= REDISMODULE_CTX_FLAGS_REPLICA_IS_TRANSFERRING;
        } else if (server.repl_state == REPL_STATE_CONNECTED) {
            flags |= REDISMODULE_CTX_FLAGS_REPLICA_IS_ONLINE;
        }

        if (server.repl_state != REPL_STATE_CONNECTED)
            flags |= REDISMODULE_CTX_FLAGS_REPLICA_IS_STALE;
    }


    float level;
    int retval = getMaxmemoryState(((void*)0),((void*)0),((void*)0),&level);
    if (retval == C_ERR) flags |= REDISMODULE_CTX_FLAGS_OOM;
    if (level > 0.75) flags |= REDISMODULE_CTX_FLAGS_OOM_WARNING;


    if (hasActiveChildProcess()) flags |= REDISMODULE_CTX_FLAGS_ACTIVE_CHILD;

    return flags;
}
