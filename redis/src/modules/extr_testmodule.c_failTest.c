
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleCtx ;


 int REDISMODULE_ERR ;
 int RedisModule_ReplyWithError (int *,char const*) ;

int failTest(RedisModuleCtx *ctx, const char *msg) {
    RedisModule_ReplyWithError(ctx, msg);
    return REDISMODULE_ERR;
}
