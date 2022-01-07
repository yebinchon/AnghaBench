
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HelloTypeObject {int len; } ;
typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;


 scalar_t__ HelloType ;
 int REDISMODULE_ERRORMSG_WRONGTYPE ;
 int REDISMODULE_KEYTYPE_EMPTY ;
 int REDISMODULE_OK ;
 int REDISMODULE_READ ;
 int REDISMODULE_WRITE ;
 int RedisModule_AutoMemory (int *) ;
 int RedisModule_KeyType (int *) ;
 scalar_t__ RedisModule_ModuleTypeGetType (int *) ;
 struct HelloTypeObject* RedisModule_ModuleTypeGetValue (int *) ;
 int * RedisModule_OpenKey (int *,int *,int) ;
 int RedisModule_ReplyWithError (int *,int ) ;
 int RedisModule_ReplyWithLongLong (int *,int ) ;
 int RedisModule_WrongArity (int *) ;

int HelloTypeLen_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    RedisModule_AutoMemory(ctx);

    if (argc != 2) return RedisModule_WrongArity(ctx);
    RedisModuleKey *key = RedisModule_OpenKey(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);
    int type = RedisModule_KeyType(key);
    if (type != REDISMODULE_KEYTYPE_EMPTY &&
        RedisModule_ModuleTypeGetType(key) != HelloType)
    {
        return RedisModule_ReplyWithError(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }

    struct HelloTypeObject *hto = RedisModule_ModuleTypeGetValue(key);
    RedisModule_ReplyWithLongLong(ctx,hto ? hto->len : 0);
    return REDISMODULE_OK;
}
