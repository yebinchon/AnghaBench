
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleDictIter ;
typedef int RedisModuleCtx ;


 int Keyspace ;
 scalar_t__ REDISMODULE_ERR ;
 scalar_t__ REDISMODULE_OK ;
 int REDISMODULE_POSTPONED_ARRAY_LEN ;
 scalar_t__ RedisModule_DictCompare (int *,char*,int *) ;
 int * RedisModule_DictIteratorStart (int ,char*,int *) ;
 int RedisModule_DictIteratorStop (int *) ;
 char* RedisModule_DictNextC (int *,size_t*,int *) ;
 int RedisModule_ReplySetArrayLength (int *,long long) ;
 int RedisModule_ReplyWithArray (int *,int ) ;
 int RedisModule_ReplyWithError (int *,char*) ;
 int RedisModule_ReplyWithStringBuffer (int *,char*,size_t) ;
 scalar_t__ RedisModule_StringToLongLong (int *,long long*) ;
 int RedisModule_WrongArity (int *) ;

int cmd_KEYRANGE(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 4) return RedisModule_WrongArity(ctx);


    long long count;
    if (RedisModule_StringToLongLong(argv[3],&count) != REDISMODULE_OK) {
        return RedisModule_ReplyWithError(ctx,"ERR invalid count");
    }


    RedisModuleDictIter *iter = RedisModule_DictIteratorStart(
        Keyspace, ">=", argv[1]);


    char *key;
    size_t keylen;
    long long replylen = 0;
    RedisModule_ReplyWithArray(ctx,REDISMODULE_POSTPONED_ARRAY_LEN);
    while((key = RedisModule_DictNextC(iter,&keylen,((void*)0))) != ((void*)0)) {
        if (replylen >= count) break;
        if (RedisModule_DictCompare(iter,"<=",argv[2]) == REDISMODULE_ERR)
            break;
        RedisModule_ReplyWithStringBuffer(ctx,key,keylen);
        replylen++;
    }
    RedisModule_ReplySetArrayLength(ctx,replylen);


    RedisModule_DictIteratorStop(iter);
    return REDISMODULE_OK;
}
