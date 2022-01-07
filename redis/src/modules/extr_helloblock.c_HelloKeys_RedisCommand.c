
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int RedisModuleString ;
typedef int RedisModuleCtx ;
typedef int RedisModuleBlockedClient ;


 int HelloKeys_ThreadMain ;
 int REDISMODULE_NOT_USED (int **) ;
 int REDISMODULE_OK ;
 int RedisModule_AbortBlock (int *) ;
 int * RedisModule_BlockClient (int *,int *,int *,int *,int ) ;
 int RedisModule_ReplyWithError (int *,char*) ;
 int RedisModule_WrongArity (int *) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;

int HelloKeys_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    REDISMODULE_NOT_USED(argv);
    if (argc != 1) return RedisModule_WrongArity(ctx);

    pthread_t tid;




    RedisModuleBlockedClient *bc = RedisModule_BlockClient(ctx,((void*)0),((void*)0),((void*)0),0);




    if (pthread_create(&tid,((void*)0),HelloKeys_ThreadMain,bc) != 0) {
        RedisModule_AbortBlock(bc);
        return RedisModule_ReplyWithError(ctx,"-ERR Can't start thread");
    }
    return REDISMODULE_OK;
}
