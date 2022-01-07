
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;


 char* REDISMODULE_ERRORMSG_WRONGTYPE ;
 scalar_t__ REDISMODULE_KEYTYPE_ZSET ;
 scalar_t__ REDISMODULE_OK ;
 int REDISMODULE_POSTPONED_ARRAY_LEN ;
 int REDISMODULE_READ ;
 int REDISMODULE_WRITE ;
 int RedisModule_AutoMemory (int *) ;
 int RedisModule_CloseKey (int *) ;
 int RedisModule_FreeString (int *,int *) ;
 scalar_t__ RedisModule_KeyType (int *) ;
 int * RedisModule_OpenKey (int *,int *,int) ;
 int RedisModule_ReplySetArrayLength (int *,int) ;
 int RedisModule_ReplyWithArray (int *,int ) ;
 int RedisModule_ReplyWithError (int *,char*) ;
 int RedisModule_ReplyWithString (int *,int *) ;
 int RedisModule_WrongArity (int *) ;
 scalar_t__ RedisModule_ZsetFirstInLexRange (int *,int *,int *) ;
 int * RedisModule_ZsetRangeCurrentElement (int *,double*) ;
 int RedisModule_ZsetRangeEndReached (int *) ;
 int RedisModule_ZsetRangeNext (int *) ;
 int RedisModule_ZsetRangeStop (int *) ;

int HelloLexRange_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    RedisModule_AutoMemory(ctx);

    if (argc != 6) return RedisModule_WrongArity(ctx);

    RedisModuleKey *key = RedisModule_OpenKey(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);
    if (RedisModule_KeyType(key) != REDISMODULE_KEYTYPE_ZSET) {
        return RedisModule_ReplyWithError(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }

    if (RedisModule_ZsetFirstInLexRange(key,argv[2],argv[3]) != REDISMODULE_OK) {
        return RedisModule_ReplyWithError(ctx,"invalid range");
    }

    int arraylen = 0;
    RedisModule_ReplyWithArray(ctx,REDISMODULE_POSTPONED_ARRAY_LEN);
    while(!RedisModule_ZsetRangeEndReached(key)) {
        double score;
        RedisModuleString *ele = RedisModule_ZsetRangeCurrentElement(key,&score);
        RedisModule_ReplyWithString(ctx,ele);
        RedisModule_FreeString(ctx,ele);
        RedisModule_ZsetRangeNext(key);
        arraylen++;
    }
    RedisModule_ZsetRangeStop(key);
    RedisModule_ReplySetArrayLength(ctx,arraylen);
    RedisModule_CloseKey(key);
    return REDISMODULE_OK;
}
