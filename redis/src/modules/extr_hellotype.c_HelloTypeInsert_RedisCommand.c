
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HelloTypeObject {int len; } ;
typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;


 scalar_t__ HelloType ;
 int HelloTypeInsert (struct HelloTypeObject*,long long) ;
 char* REDISMODULE_ERRORMSG_WRONGTYPE ;
 int REDISMODULE_KEYTYPE_EMPTY ;
 scalar_t__ REDISMODULE_OK ;
 int REDISMODULE_READ ;
 int REDISMODULE_WRITE ;
 int RedisModule_AutoMemory (int *) ;
 int RedisModule_KeyType (int *) ;
 scalar_t__ RedisModule_ModuleTypeGetType (int *) ;
 struct HelloTypeObject* RedisModule_ModuleTypeGetValue (int *) ;
 int RedisModule_ModuleTypeSetValue (int *,scalar_t__,struct HelloTypeObject*) ;
 int * RedisModule_OpenKey (int *,int *,int) ;
 int RedisModule_ReplicateVerbatim (int *) ;
 int RedisModule_ReplyWithError (int *,char*) ;
 int RedisModule_ReplyWithLongLong (int *,int ) ;
 int RedisModule_SignalKeyAsReady (int *,int *) ;
 scalar_t__ RedisModule_StringToLongLong (int *,long long*) ;
 int RedisModule_WrongArity (int *) ;
 struct HelloTypeObject* createHelloTypeObject () ;

int HelloTypeInsert_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    RedisModule_AutoMemory(ctx);

    if (argc != 3) return RedisModule_WrongArity(ctx);
    RedisModuleKey *key = RedisModule_OpenKey(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);
    int type = RedisModule_KeyType(key);
    if (type != REDISMODULE_KEYTYPE_EMPTY &&
        RedisModule_ModuleTypeGetType(key) != HelloType)
    {
        return RedisModule_ReplyWithError(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }

    long long value;
    if ((RedisModule_StringToLongLong(argv[2],&value) != REDISMODULE_OK)) {
        return RedisModule_ReplyWithError(ctx,"ERR invalid value: must be a signed 64 bit integer");
    }


    struct HelloTypeObject *hto;
    if (type == REDISMODULE_KEYTYPE_EMPTY) {
        hto = createHelloTypeObject();
        RedisModule_ModuleTypeSetValue(key,HelloType,hto);
    } else {
        hto = RedisModule_ModuleTypeGetValue(key);
    }


    HelloTypeInsert(hto,value);
    RedisModule_SignalKeyAsReady(ctx,argv[1]);

    RedisModule_ReplyWithLongLong(ctx,hto->len);
    RedisModule_ReplicateVerbatim(ctx);
    return REDISMODULE_OK;
}
