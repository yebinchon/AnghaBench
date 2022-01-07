
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;


 char* REDISMODULE_ERRORMSG_WRONGTYPE ;
 scalar_t__ REDISMODULE_KEYTYPE_EMPTY ;
 scalar_t__ REDISMODULE_KEYTYPE_LIST ;
 int REDISMODULE_LIST_HEAD ;
 int REDISMODULE_LIST_TAIL ;
 scalar_t__ REDISMODULE_OK ;
 int REDISMODULE_READ ;
 int REDISMODULE_WRITE ;
 int RedisModule_AutoMemory (int *) ;
 scalar_t__ RedisModule_KeyType (int *) ;
 int * RedisModule_ListPop (int *,int ) ;
 int RedisModule_ListPush (int *,int ,int *) ;
 int * RedisModule_OpenKey (int *,int *,int) ;
 int RedisModule_ReplyWithError (int *,char*) ;
 int RedisModule_ReplyWithLongLong (int *,size_t) ;
 scalar_t__ RedisModule_StringToLongLong (int *,long long*) ;
 size_t RedisModule_ValueLength (int *) ;
 int RedisModule_WrongArity (int *) ;

int HelloListSpliceAuto_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 4) return RedisModule_WrongArity(ctx);

    RedisModule_AutoMemory(ctx);

    RedisModuleKey *srckey = RedisModule_OpenKey(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);
    RedisModuleKey *dstkey = RedisModule_OpenKey(ctx,argv[2],
        REDISMODULE_READ|REDISMODULE_WRITE);


    if ((RedisModule_KeyType(srckey) != REDISMODULE_KEYTYPE_LIST &&
         RedisModule_KeyType(srckey) != REDISMODULE_KEYTYPE_EMPTY) ||
        (RedisModule_KeyType(dstkey) != REDISMODULE_KEYTYPE_LIST &&
         RedisModule_KeyType(dstkey) != REDISMODULE_KEYTYPE_EMPTY))
    {
        return RedisModule_ReplyWithError(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }

    long long count;
    if ((RedisModule_StringToLongLong(argv[3],&count) != REDISMODULE_OK) ||
        (count < 0))
    {
        return RedisModule_ReplyWithError(ctx,"ERR invalid count");
    }

    while(count-- > 0) {
        RedisModuleString *ele;

        ele = RedisModule_ListPop(srckey,REDISMODULE_LIST_TAIL);
        if (ele == ((void*)0)) break;
        RedisModule_ListPush(dstkey,REDISMODULE_LIST_HEAD,ele);
    }

    size_t len = RedisModule_ValueLength(srckey);
    RedisModule_ReplyWithLongLong(ctx,len);
    return REDISMODULE_OK;
}
