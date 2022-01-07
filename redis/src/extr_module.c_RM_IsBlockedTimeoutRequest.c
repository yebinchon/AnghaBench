
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ RedisModuleCtx ;


 int REDISMODULE_CTX_BLOCKED_TIMEOUT ;

int RM_IsBlockedTimeoutRequest(RedisModuleCtx *ctx) {
    return (ctx->flags & REDISMODULE_CTX_BLOCKED_TIMEOUT) != 0;
}
