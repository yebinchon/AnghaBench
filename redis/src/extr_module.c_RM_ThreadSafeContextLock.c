
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleCtx ;


 int UNUSED (int *) ;
 int moduleAcquireGIL () ;

void RM_ThreadSafeContextLock(RedisModuleCtx *ctx) {
    UNUSED(ctx);
    moduleAcquireGIL();
}
