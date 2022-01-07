
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rax; } ;
typedef TYPE_1__ RedisModuleDict ;
typedef int RedisModuleCtx ;


 int REDISMODULE_AM_DICT ;
 int autoMemoryFreed (int *,int ,TYPE_1__*) ;
 int raxFree (int ) ;
 int zfree (TYPE_1__*) ;

void RM_FreeDict(RedisModuleCtx *ctx, RedisModuleDict *d) {
    if (ctx != ((void*)0)) autoMemoryFreed(ctx,REDISMODULE_AM_DICT,d);
    raxFree(d->rax);
    zfree(d);
}
