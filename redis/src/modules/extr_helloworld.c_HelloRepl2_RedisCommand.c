
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;


 int REDISMODULE_ERRORMSG_WRONGTYPE ;
 scalar_t__ REDISMODULE_KEYTYPE_LIST ;
 int REDISMODULE_LIST_HEAD ;
 int REDISMODULE_LIST_TAIL ;
 scalar_t__ REDISMODULE_OK ;
 int REDISMODULE_READ ;
 int REDISMODULE_WRITE ;
 int RedisModule_AutoMemory (int *) ;
 int * RedisModule_CreateStringFromLongLong (int *,long long) ;
 scalar_t__ RedisModule_KeyType (int *) ;
 int * RedisModule_ListPop (int *,int ) ;
 int RedisModule_ListPush (int *,int ,int *) ;
 int * RedisModule_OpenKey (int *,int *,int) ;
 int RedisModule_ReplicateVerbatim (int *) ;
 int RedisModule_ReplyWithError (int *,int ) ;
 int RedisModule_ReplyWithLongLong (int *,long long) ;
 scalar_t__ RedisModule_StringToLongLong (int *,long long*) ;
 size_t RedisModule_ValueLength (int *) ;
 int RedisModule_WrongArity (int *) ;

int HelloRepl2_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 2) return RedisModule_WrongArity(ctx);

    RedisModule_AutoMemory(ctx);
    RedisModuleKey *key = RedisModule_OpenKey(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);

    if (RedisModule_KeyType(key) != REDISMODULE_KEYTYPE_LIST)
        return RedisModule_ReplyWithError(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);

    size_t listlen = RedisModule_ValueLength(key);
    long long sum = 0;


    while(listlen--) {
        RedisModuleString *ele = RedisModule_ListPop(key,REDISMODULE_LIST_TAIL);
        long long val;
        if (RedisModule_StringToLongLong(ele,&val) != REDISMODULE_OK) val = 0;
        val++;
        sum += val;
        RedisModuleString *newele = RedisModule_CreateStringFromLongLong(ctx,val);
        RedisModule_ListPush(key,REDISMODULE_LIST_HEAD,newele);
    }
    RedisModule_ReplyWithLongLong(ctx,sum);
    RedisModule_ReplicateVerbatim(ctx);
    return REDISMODULE_OK;
}
