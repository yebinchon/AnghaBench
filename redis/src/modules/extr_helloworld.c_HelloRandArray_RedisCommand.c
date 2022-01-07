
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 scalar_t__ REDISMODULE_OK ;
 int RedisModule_ReplyWithArray (int *,long long) ;
 int RedisModule_ReplyWithError (int *,char*) ;
 int RedisModule_ReplyWithLongLong (int *,int ) ;
 scalar_t__ RedisModule_StringToLongLong (int *,long long*) ;
 int RedisModule_WrongArity (int *) ;
 int rand () ;

int HelloRandArray_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 2) return RedisModule_WrongArity(ctx);
    long long count;
    if (RedisModule_StringToLongLong(argv[1],&count) != REDISMODULE_OK ||
        count < 0)
        return RedisModule_ReplyWithError(ctx,"ERR invalid count");




    RedisModule_ReplyWithArray(ctx,count);
    while(count--) RedisModule_ReplyWithLongLong(ctx,rand());
    return REDISMODULE_OK;
}
