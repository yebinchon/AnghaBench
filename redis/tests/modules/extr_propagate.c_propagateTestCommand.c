
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int RedisModuleTimerID ;
typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_NOT_USED (int) ;
 int REDISMODULE_OK ;
 int RedisModule_CreateTimer (int *,int,int ,int *) ;
 int RedisModule_ReplyWithError (int *,char*) ;
 int RedisModule_ReplyWithSimpleString (int *,char*) ;
 scalar_t__ pthread_create (int*,int *,int ,int *) ;
 int threadMain ;
 int timerHandler ;

int propagateTestCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    REDISMODULE_NOT_USED(argv);
    REDISMODULE_NOT_USED(argc);

    RedisModuleTimerID timer_id =
        RedisModule_CreateTimer(ctx,100,timerHandler,((void*)0));
    REDISMODULE_NOT_USED(timer_id);

    pthread_t tid;
    if (pthread_create(&tid,((void*)0),threadMain,((void*)0)) != 0)
        return RedisModule_ReplyWithError(ctx,"-ERR Can't start thread");
    REDISMODULE_NOT_USED(tid);

    RedisModule_ReplyWithSimpleString(ctx,"OK");
    return REDISMODULE_OK;
}
