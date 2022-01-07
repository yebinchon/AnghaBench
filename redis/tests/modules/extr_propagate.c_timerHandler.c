
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void RedisModuleCtx ;


 int REDISMODULE_NOT_USED (void*) ;
 int RedisModule_CreateTimer (void*,int,void (*) (void*,void*),int *) ;
 int RedisModule_Replicate (void*,char*,char*,char*) ;

void timerHandler(RedisModuleCtx *ctx, void *data) {
    REDISMODULE_NOT_USED(ctx);
    REDISMODULE_NOT_USED(data);

    static int times = 0;

    RedisModule_Replicate(ctx,"INCR","c","timer");
    times++;

    if (times < 10)
        RedisModule_CreateTimer(ctx,100,timerHandler,((void*)0));
    else
        times = 0;
}
