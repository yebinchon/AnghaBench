
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_APIVER_1 ;
 scalar_t__ REDISMODULE_ERR ;
 int REDISMODULE_NOT_USED (int) ;
 int REDISMODULE_OK ;
 scalar_t__ RedisModule_CreateCommand (int *,char*,int ,char*,int,int,int) ;
 scalar_t__ RedisModule_Init (int *,char*,int,int ) ;
 int propagateTestCommand ;

int RedisModule_OnLoad(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    REDISMODULE_NOT_USED(argv);
    REDISMODULE_NOT_USED(argc);

    if (RedisModule_Init(ctx,"propagate-test",1,REDISMODULE_APIVER_1)
            == REDISMODULE_ERR) return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,"propagate-test",
                propagateTestCommand,
                "",1,1,1) == REDISMODULE_ERR)
            return REDISMODULE_ERR;
    return REDISMODULE_OK;
}
