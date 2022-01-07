
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int RedisModuleString ;
typedef int RedisModuleCtx ;
typedef int RedisModuleBlockedClient ;


 int HelloBlock_Disconnected ;
 int HelloBlock_FreeData ;
 int HelloBlock_Reply ;
 int HelloBlock_ThreadMain ;
 int HelloBlock_Timeout ;
 scalar_t__ REDISMODULE_OK ;
 int RedisModule_AbortBlock (int *) ;
 void** RedisModule_Alloc (int) ;
 int * RedisModule_BlockClient (int *,int ,int ,int ,long long) ;
 int RedisModule_ReplyWithError (int *,char*) ;
 int RedisModule_SetDisconnectCallback (int *,int ) ;
 scalar_t__ RedisModule_StringToLongLong (int *,long long*) ;
 int RedisModule_WrongArity (int *) ;
 scalar_t__ pthread_create (int *,int *,int ,void**) ;

int HelloBlock_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 3) return RedisModule_WrongArity(ctx);
    long long delay;
    long long timeout;

    if (RedisModule_StringToLongLong(argv[1],&delay) != REDISMODULE_OK) {
        return RedisModule_ReplyWithError(ctx,"ERR invalid count");
    }

    if (RedisModule_StringToLongLong(argv[2],&timeout) != REDISMODULE_OK) {
        return RedisModule_ReplyWithError(ctx,"ERR invalid count");
    }

    pthread_t tid;
    RedisModuleBlockedClient *bc = RedisModule_BlockClient(ctx,HelloBlock_Reply,HelloBlock_Timeout,HelloBlock_FreeData,timeout);




    RedisModule_SetDisconnectCallback(bc,HelloBlock_Disconnected);




    void **targ = RedisModule_Alloc(sizeof(void*)*2);
    targ[0] = bc;
    targ[1] = (void*)(unsigned long) delay;

    if (pthread_create(&tid,((void*)0),HelloBlock_ThreadMain,targ) != 0) {
        RedisModule_AbortBlock(bc);
        return RedisModule_ReplyWithError(ctx,"-ERR Can't start thread");
    }
    return REDISMODULE_OK;
}
