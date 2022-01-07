
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleCtx ;


 int REDISMODULE_NOT_USED (void*) ;
 int RedisModule_FreeThreadSafeContext (int *) ;
 int * RedisModule_GetThreadSafeContext (int *) ;
 int RedisModule_Replicate (int *,char*,char*,char*) ;
 int RedisModule_SelectDb (int *,int) ;
 int RedisModule_ThreadSafeContextLock (int *) ;
 int RedisModule_ThreadSafeContextUnlock (int *) ;

void *threadMain(void *arg) {
    REDISMODULE_NOT_USED(arg);
    RedisModuleCtx *ctx = RedisModule_GetThreadSafeContext(((void*)0));
    RedisModule_SelectDb(ctx,9);
    for (int i = 0; i < 10; i++) {
        RedisModule_ThreadSafeContextLock(ctx);
        RedisModule_Replicate(ctx,"INCR","c","thread");
        RedisModule_ThreadSafeContextUnlock(ctx);
    }
    RedisModule_FreeThreadSafeContext(ctx);
    return ((void*)0);
}
