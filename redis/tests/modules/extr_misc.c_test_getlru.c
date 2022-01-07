
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;


 int REDISMODULE_OK ;
 int REDISMODULE_OPEN_KEY_NOTOUCH ;
 int REDISMODULE_READ ;
 int RedisModule_CloseKey (int *) ;
 int RedisModule_GetLRUOrLFU (int *,long long*,long long*) ;
 int * RedisModule_OpenKey (int *,int *,int) ;
 int RedisModule_ReplyWithLongLong (int *,long long) ;
 int RedisModule_WrongArity (int *) ;

int test_getlru(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    if (argc<2) {
        RedisModule_WrongArity(ctx);
        return REDISMODULE_OK;
    }
    RedisModuleString *keyname = argv[1];
    RedisModuleKey *key = RedisModule_OpenKey(ctx, keyname, REDISMODULE_READ|REDISMODULE_OPEN_KEY_NOTOUCH);
    long long lru, lfu;
    RedisModule_GetLRUOrLFU(key, &lfu, &lru);
    RedisModule_ReplyWithLongLong(ctx, lru);
    RedisModule_CloseKey(key);
    return REDISMODULE_OK;
}
