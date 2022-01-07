
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* blocked_privdata; } ;
typedef TYPE_1__ RedisModuleCtx ;



void *RM_GetBlockedClientPrivateData(RedisModuleCtx *ctx) {
    return ctx->blocked_privdata;
}
