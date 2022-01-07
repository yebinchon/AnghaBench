
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int int64_t ;
typedef int id ;
struct TYPE_7__ {scalar_t__ module; } ;
struct TYPE_6__ {scalar_t__ module; void* data; } ;
typedef int RedisModuleTimerID ;
typedef TYPE_1__ RedisModuleTimer ;
typedef TYPE_2__ RedisModuleCtx ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int Timers ;
 int ntohu64 (int ) ;
 TYPE_1__* raxFind (int ,unsigned char*,int) ;
 TYPE_1__* raxNotFound ;
 int ustime () ;

int RM_GetTimerInfo(RedisModuleCtx *ctx, RedisModuleTimerID id, uint64_t *remaining, void **data) {
    RedisModuleTimer *timer = raxFind(Timers,(unsigned char*)&id,sizeof(id));
    if (timer == raxNotFound || timer->module != ctx->module)
        return REDISMODULE_ERR;
    if (remaining) {
        int64_t rem = ntohu64(id)-ustime();
        if (rem < 0) rem = 0;
        *remaining = rem/1000;
    }
    if (data) *data = timer->data;
    return REDISMODULE_OK;
}
