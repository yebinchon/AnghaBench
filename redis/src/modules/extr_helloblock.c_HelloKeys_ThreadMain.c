
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;
typedef int RedisModuleCallReply ;
typedef int RedisModuleBlockedClient ;


 int REDISMODULE_POSTPONED_ARRAY_LEN ;
 int * RedisModule_Call (int *,char*,char*,long long) ;
 int * RedisModule_CallReplyArrayElement (int *,size_t) ;
 size_t RedisModule_CallReplyLength (int *) ;
 int * RedisModule_CreateStringFromCallReply (int *) ;
 int RedisModule_FreeCallReply (int *) ;
 int RedisModule_FreeString (int *,int *) ;
 int RedisModule_FreeThreadSafeContext (int *) ;
 int * RedisModule_GetThreadSafeContext (int *) ;
 int RedisModule_ReplySetArrayLength (int *,size_t) ;
 int RedisModule_ReplyWithArray (int *,int ) ;
 int RedisModule_ReplyWithCallReply (int *,int *) ;
 int RedisModule_StringToLongLong (int *,long long*) ;
 int RedisModule_ThreadSafeContextLock (int *) ;
 int RedisModule_ThreadSafeContextUnlock (int *) ;
 int RedisModule_UnblockClient (int *,int *) ;

void *HelloKeys_ThreadMain(void *arg) {
    RedisModuleBlockedClient *bc = arg;
    RedisModuleCtx *ctx = RedisModule_GetThreadSafeContext(bc);
    long long cursor = 0;
    size_t replylen = 0;

    RedisModule_ReplyWithArray(ctx,REDISMODULE_POSTPONED_ARRAY_LEN);
    do {
        RedisModule_ThreadSafeContextLock(ctx);
        RedisModuleCallReply *reply = RedisModule_Call(ctx,
            "SCAN","l",(long long)cursor);
        RedisModule_ThreadSafeContextUnlock(ctx);

        RedisModuleCallReply *cr_cursor =
            RedisModule_CallReplyArrayElement(reply,0);
        RedisModuleCallReply *cr_keys =
            RedisModule_CallReplyArrayElement(reply,1);

        RedisModuleString *s = RedisModule_CreateStringFromCallReply(cr_cursor);
        RedisModule_StringToLongLong(s,&cursor);
        RedisModule_FreeString(ctx,s);

        size_t items = RedisModule_CallReplyLength(cr_keys);
        for (size_t j = 0; j < items; j++) {
            RedisModuleCallReply *ele =
                RedisModule_CallReplyArrayElement(cr_keys,j);
            RedisModule_ReplyWithCallReply(ctx,ele);
            replylen++;
        }
        RedisModule_FreeCallReply(reply);
    } while (cursor != 0);
    RedisModule_ReplySetArrayLength(ctx,replylen);

    RedisModule_FreeThreadSafeContext(ctx);
    RedisModule_UnblockClient(bc,((void*)0));
    return ((void*)0);
}
