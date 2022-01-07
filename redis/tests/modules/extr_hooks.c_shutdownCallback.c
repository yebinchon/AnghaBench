
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
typedef void* RedisModuleEvent ;
typedef int RedisModuleCtx ;


 int REDISMODULE_NOT_USED (void*) ;
 int RedisModule_Log (int *,char*,char*,char*) ;

void shutdownCallback(RedisModuleCtx *ctx, RedisModuleEvent e, uint64_t sub, void *data)
{
    REDISMODULE_NOT_USED(e);
    REDISMODULE_NOT_USED(data);
    REDISMODULE_NOT_USED(sub);

    RedisModule_Log(ctx, "warning", "module-event-%s", "shutdown");
}
