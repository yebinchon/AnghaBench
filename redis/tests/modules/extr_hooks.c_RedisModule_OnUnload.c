
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleCtx ;


 int REDISMODULE_OK ;
 int RedisModule_FreeDict (int *,int *) ;
 int clearEvents (int *) ;
 int * event_log ;

int RedisModule_OnUnload(RedisModuleCtx *ctx) {
    clearEvents(ctx);
    RedisModule_FreeDict(ctx, event_log);
    event_log = ((void*)0);
    return REDISMODULE_OK;
}
