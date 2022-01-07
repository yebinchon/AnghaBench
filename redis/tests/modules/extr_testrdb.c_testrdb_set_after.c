
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_OK ;
 int RedisModule_FreeString (int *,int *) ;
 int RedisModule_ReplyWithLongLong (int *,int) ;
 int RedisModule_RetainString (int *,int *) ;
 int RedisModule_WrongArity (int *) ;
 int * after_str ;

int testrdb_set_after(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    if (argc != 2){
        RedisModule_WrongArity(ctx);
        return REDISMODULE_OK;
    }

    if (after_str)
        RedisModule_FreeString(ctx, after_str);
    after_str = argv[1];
    RedisModule_RetainString(ctx, argv[1]);
    RedisModule_ReplyWithLongLong(ctx, 1);
    return REDISMODULE_OK;
}
