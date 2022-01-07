
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_APIVER_1 ;
 scalar_t__ REDISMODULE_ERR ;
 int REDISMODULE_NOT_USED (int) ;
 int REDISMODULE_OK ;
 int RedisModuleEvent_ClientChange ;
 int RedisModuleEvent_CronLoop ;
 int RedisModuleEvent_FlushDB ;
 int RedisModuleEvent_Loading ;
 int RedisModuleEvent_LoadingProgress ;
 int RedisModuleEvent_MasterLinkChange ;
 int RedisModuleEvent_ModuleChange ;
 int RedisModuleEvent_Persistence ;
 int RedisModuleEvent_ReplicaChange ;
 int RedisModuleEvent_ReplicationRoleChanged ;
 int RedisModuleEvent_Shutdown ;
 scalar_t__ RedisModule_CreateCommand (int *,char*,int ,char*,int ,int ,int ) ;
 int RedisModule_CreateDict (int *) ;
 scalar_t__ RedisModule_Init (int *,char*,int,int ) ;
 int RedisModule_SubscribeToServerEvent (int *,int ,int ) ;
 int clientChangeCallback ;
 int cmdEventCount ;
 int cmdEventLast ;
 int cmdEventsClear ;
 int cronLoopCallback ;
 int event_log ;
 int flushdbCallback ;
 int loadingCallback ;
 int loadingProgressCallback ;
 int moduleChangeCallback ;
 int persistenceCallback ;
 int rasterLinkChangeCallback ;
 int replicationChangeCallback ;
 int roleChangeCallback ;
 int shutdownCallback ;

int RedisModule_OnLoad(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    REDISMODULE_NOT_USED(argv);
    REDISMODULE_NOT_USED(argc);

    if (RedisModule_Init(ctx,"testhook",1,REDISMODULE_APIVER_1)
        == REDISMODULE_ERR) return REDISMODULE_ERR;


    RedisModule_SubscribeToServerEvent(ctx,
        RedisModuleEvent_ReplicationRoleChanged, roleChangeCallback);
    RedisModule_SubscribeToServerEvent(ctx,
        RedisModuleEvent_ReplicaChange, replicationChangeCallback);
    RedisModule_SubscribeToServerEvent(ctx,
        RedisModuleEvent_MasterLinkChange, rasterLinkChangeCallback);


    RedisModule_SubscribeToServerEvent(ctx,
        RedisModuleEvent_Persistence, persistenceCallback);
    RedisModule_SubscribeToServerEvent(ctx,
        RedisModuleEvent_Loading, loadingCallback);
    RedisModule_SubscribeToServerEvent(ctx,
        RedisModuleEvent_LoadingProgress, loadingProgressCallback);


    RedisModule_SubscribeToServerEvent(ctx,
        RedisModuleEvent_ClientChange, clientChangeCallback);
    RedisModule_SubscribeToServerEvent(ctx,
        RedisModuleEvent_FlushDB, flushdbCallback);
    RedisModule_SubscribeToServerEvent(ctx,
        RedisModuleEvent_Shutdown, shutdownCallback);
    RedisModule_SubscribeToServerEvent(ctx,
        RedisModuleEvent_CronLoop, cronLoopCallback);
    RedisModule_SubscribeToServerEvent(ctx,
        RedisModuleEvent_ModuleChange, moduleChangeCallback);

    event_log = RedisModule_CreateDict(ctx);

    if (RedisModule_CreateCommand(ctx,"hooks.event_count", cmdEventCount,"",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;
    if (RedisModule_CreateCommand(ctx,"hooks.event_last", cmdEventLast,"",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;
    if (RedisModule_CreateCommand(ctx,"hooks.clear", cmdEventsClear,"",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    return REDISMODULE_OK;
}
