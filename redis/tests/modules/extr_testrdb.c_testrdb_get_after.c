
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_NOT_USED (int **) ;
 int REDISMODULE_OK ;
 int RedisModule_ReplyWithString (int *,scalar_t__) ;
 int RedisModule_ReplyWithStringBuffer (int *,char*,int ) ;
 int RedisModule_WrongArity (int *) ;
 scalar_t__ after_str ;

int testrdb_get_after(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    REDISMODULE_NOT_USED(argv);
    if (argc != 1){
        RedisModule_WrongArity(ctx);
        return REDISMODULE_OK;
    }
    if (after_str)
        RedisModule_ReplyWithString(ctx, after_str);
    else
        RedisModule_ReplyWithStringBuffer(ctx, "", 0);
    return REDISMODULE_OK;
}
