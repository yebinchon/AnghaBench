
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;


 int REDISMODULE_ERRORMSG_WRONGTYPE ;
 int REDISMODULE_HASH_NONE ;
 int REDISMODULE_KEYTYPE_EMPTY ;
 int REDISMODULE_KEYTYPE_HASH ;
 int REDISMODULE_OK ;
 int REDISMODULE_READ ;
 int REDISMODULE_WRITE ;
 int RedisModule_AutoMemory (int *) ;
 int RedisModule_HashGet (int *,int ,int *,int **,int *) ;
 int RedisModule_HashSet (int *,int ,int *,int *,int *) ;
 int RedisModule_KeyType (int *) ;
 int * RedisModule_OpenKey (int *,int *,int) ;
 int RedisModule_ReplyWithError (int *,int ) ;
 int RedisModule_ReplyWithLongLong (int *,int ) ;
 int RedisModule_WrongArity (int *) ;

int HelloHCopy_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    RedisModule_AutoMemory(ctx);

    if (argc != 4) return RedisModule_WrongArity(ctx);
    RedisModuleKey *key = RedisModule_OpenKey(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);
    int type = RedisModule_KeyType(key);
    if (type != REDISMODULE_KEYTYPE_HASH &&
        type != REDISMODULE_KEYTYPE_EMPTY)
    {
        return RedisModule_ReplyWithError(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }


    RedisModuleString *oldval;
    RedisModule_HashGet(key,REDISMODULE_HASH_NONE,argv[2],&oldval,((void*)0));
    if (oldval) {
        RedisModule_HashSet(key,REDISMODULE_HASH_NONE,argv[3],oldval,((void*)0));
    }
    RedisModule_ReplyWithLongLong(ctx,oldval != ((void*)0));
    return REDISMODULE_OK;
}
