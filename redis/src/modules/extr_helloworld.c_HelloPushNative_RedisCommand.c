
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;


 int REDISMODULE_LIST_TAIL ;
 int REDISMODULE_OK ;
 int REDISMODULE_READ ;
 int REDISMODULE_WRITE ;
 int RedisModule_CloseKey (int *) ;
 int RedisModule_ListPush (int *,int ,int *) ;
 int * RedisModule_OpenKey (int *,int *,int) ;
 int RedisModule_ReplyWithLongLong (int *,size_t) ;
 size_t RedisModule_ValueLength (int *) ;
 int RedisModule_WrongArity (int *) ;

int HelloPushNative_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    if (argc != 3) return RedisModule_WrongArity(ctx);

    RedisModuleKey *key = RedisModule_OpenKey(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);

    RedisModule_ListPush(key,REDISMODULE_LIST_TAIL,argv[2]);
    size_t newlen = RedisModule_ValueLength(key);
    RedisModule_CloseKey(key);
    RedisModule_ReplyWithLongLong(ctx,newlen);
    return REDISMODULE_OK;
}
