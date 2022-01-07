
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleCtx ;


 int REDISMODULE_OK ;
 int RedisModule_FreeString (int *,scalar_t__) ;
 scalar_t__ after_str ;
 scalar_t__ before_str ;

int RedisModule_OnUnload(RedisModuleCtx *ctx) {
    if (before_str)
        RedisModule_FreeString(ctx, before_str);
    if (after_str)
        RedisModule_FreeString(ctx, after_str);
    return REDISMODULE_OK;
}
