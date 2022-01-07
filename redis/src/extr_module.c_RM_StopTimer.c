
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int id ;
struct TYPE_8__ {scalar_t__ module; } ;
struct TYPE_7__ {scalar_t__ module; void* data; } ;
typedef int RedisModuleTimerID ;
typedef TYPE_1__ RedisModuleTimer ;
typedef TYPE_2__ RedisModuleCtx ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int Timers ;
 TYPE_1__* raxFind (int ,unsigned char*,int) ;
 TYPE_1__* raxNotFound ;
 int raxRemove (int ,unsigned char*,int,int *) ;
 int zfree (TYPE_1__*) ;

int RM_StopTimer(RedisModuleCtx *ctx, RedisModuleTimerID id, void **data) {
    RedisModuleTimer *timer = raxFind(Timers,(unsigned char*)&id,sizeof(id));
    if (timer == raxNotFound || timer->module != ctx->module)
        return REDISMODULE_ERR;
    if (data) *data = timer->data;
    raxRemove(Timers,(unsigned char*)&id,sizeof(id),((void*)0));
    zfree(timer);
    return REDISMODULE_OK;
}
