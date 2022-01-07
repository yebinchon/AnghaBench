
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;


 int REDISMODULE_OK ;
 int REDISMODULE_OPEN_KEY_NOTOUCH ;
 int REDISMODULE_WRITE ;
 int RedisModule_CloseKey (int *) ;
 int * RedisModule_OpenKey (int *,int *,int) ;
 int RedisModule_ReplyWithCString (int *,char*) ;
 int RedisModule_SetLRUOrLFU (int *,int,long long) ;
 int RedisModule_StringToLongLong (int *,long long*) ;
 int RedisModule_WrongArity (int *) ;

int test_setlru(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    if (argc<3) {
        RedisModule_WrongArity(ctx);
        return REDISMODULE_OK;
    }
    RedisModuleString *keyname = argv[1];
    RedisModuleKey *key = RedisModule_OpenKey(ctx, keyname, REDISMODULE_WRITE|REDISMODULE_OPEN_KEY_NOTOUCH);
    long long lru;
    RedisModule_StringToLongLong(argv[2], &lru);
    RedisModule_SetLRUOrLFU(key, -1, lru);
    RedisModule_ReplyWithCString(ctx, "Ok");
    RedisModule_CloseKey(key);
    return REDISMODULE_OK;
}
