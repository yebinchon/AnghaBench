
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleCtx ;


 int REDISMODULE_OK ;
 int RedisModule_FreeString (int *,int ) ;
 int log_key_name ;

int RedisModule_OnUnload(RedisModuleCtx *ctx) {
    RedisModule_FreeString(ctx, log_key_name);
    return REDISMODULE_OK;
}
