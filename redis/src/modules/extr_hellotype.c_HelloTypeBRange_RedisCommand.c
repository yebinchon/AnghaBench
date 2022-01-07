
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;


 int HelloBlock_FreeData ;
 int HelloBlock_Reply ;
 int HelloBlock_Timeout ;
 scalar_t__ HelloType ;
 int HelloTypeRange_RedisCommand (int *,int **,int) ;
 char* REDISMODULE_ERRORMSG_WRONGTYPE ;
 int REDISMODULE_KEYTYPE_EMPTY ;
 scalar_t__ REDISMODULE_OK ;
 int REDISMODULE_READ ;
 int REDISMODULE_WRITE ;
 void* RedisModule_Alloc (int) ;
 int RedisModule_AutoMemory (int *) ;
 int RedisModule_BlockClientOnKeys (int *,int ,int ,int ,long long,int **,int,void*) ;
 int RedisModule_KeyType (int *) ;
 scalar_t__ RedisModule_ModuleTypeGetType (int *) ;
 int * RedisModule_OpenKey (int *,int *,int) ;
 int RedisModule_ReplyWithError (int *,char*) ;
 scalar_t__ RedisModule_StringToLongLong (int *,long long*) ;
 int RedisModule_WrongArity (int *) ;

int HelloTypeBRange_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 5) return RedisModule_WrongArity(ctx);
    RedisModule_AutoMemory(ctx);
    RedisModuleKey *key = RedisModule_OpenKey(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);
    int type = RedisModule_KeyType(key);
    if (type != REDISMODULE_KEYTYPE_EMPTY &&
        RedisModule_ModuleTypeGetType(key) != HelloType)
    {
        return RedisModule_ReplyWithError(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }



    long long timeout;
    if (RedisModule_StringToLongLong(argv[4],&timeout) != REDISMODULE_OK) {
        return RedisModule_ReplyWithError(ctx,
            "ERR invalid timeout parameter");
    }


    if (type != REDISMODULE_KEYTYPE_EMPTY) {
        return HelloTypeRange_RedisCommand(ctx,argv,argc-1);
    }


    void *privdata = RedisModule_Alloc(100);
    RedisModule_BlockClientOnKeys(ctx,HelloBlock_Reply,HelloBlock_Timeout,HelloBlock_FreeData,timeout,argv+1,1,privdata);
    return REDISMODULE_OK;
}
