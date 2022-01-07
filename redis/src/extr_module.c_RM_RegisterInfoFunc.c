
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* module; } ;
struct TYPE_4__ {int info_cb; } ;
typedef int RedisModuleInfoFunc ;
typedef TYPE_2__ RedisModuleCtx ;


 int REDISMODULE_OK ;

int RM_RegisterInfoFunc(RedisModuleCtx *ctx, RedisModuleInfoFunc cb) {
    ctx->module->info_cb = cb;
    return REDISMODULE_OK;
}
