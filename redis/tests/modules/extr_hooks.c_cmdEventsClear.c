
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_NOT_USED (int) ;
 int REDISMODULE_OK ;
 int clearEvents (int *) ;

int cmdEventsClear(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    REDISMODULE_NOT_USED(argc);
    REDISMODULE_NOT_USED(argv);
    clearEvents(ctx);
    return REDISMODULE_OK;
}
