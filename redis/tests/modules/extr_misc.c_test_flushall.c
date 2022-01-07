
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_NOT_USED (int) ;
 int REDISMODULE_OK ;
 int RedisModule_ReplyWithCString (int *,char*) ;
 int RedisModule_ResetDataset (int,int ) ;

int test_flushall(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    REDISMODULE_NOT_USED(argv);
    REDISMODULE_NOT_USED(argc);
    RedisModule_ResetDataset(1, 0);
    RedisModule_ReplyWithCString(ctx, "Ok");
    return REDISMODULE_OK;
}
