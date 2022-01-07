
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_APIVER_1 ;
 scalar_t__ REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 scalar_t__ RedisModule_CreateCommand (int *,char*,int ,char*,int ,int ,int ) ;
 scalar_t__ RedisModule_Init (int *,char*,int,int ) ;
 int UNUSED (int) ;
 int fork_create ;
 int fork_exitcode ;
 int fork_kill ;

int RedisModule_OnLoad(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    UNUSED(argv);
    UNUSED(argc);
    if (RedisModule_Init(ctx,"fork",1,REDISMODULE_APIVER_1)== REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,"fork.create", fork_create,"",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,"fork.exitcode", fork_exitcode,"",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (RedisModule_CreateCommand(ctx,"fork.kill", fork_kill,"",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    return REDISMODULE_OK;
}
