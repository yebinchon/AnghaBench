
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_OK ;
 int RedisModule_ReplyWithLongLong (int *,int ) ;
 int RedisModule_UnregisterCommandFilter (int *,int ) ;
 int filter ;

int CommandFilter_UnregisterCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    (void) argc;
    (void) argv;

    RedisModule_ReplyWithLongLong(ctx,
            RedisModule_UnregisterCommandFilter(ctx, filter));

    return REDISMODULE_OK;
}
