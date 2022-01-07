
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 scalar_t__ REDISMODULE_OK ;
 scalar_t__ RedisModule_KillForkChild (int) ;
 int RedisModule_ReplyWithError (int *,char*) ;
 int RedisModule_ReplyWithLongLong (int *,int) ;
 int UNUSED (int) ;
 int child_pid ;

int fork_kill(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    UNUSED(argv);
    UNUSED(argc);
    if (RedisModule_KillForkChild(child_pid) != REDISMODULE_OK)
        RedisModule_ReplyWithError(ctx, "KillForkChild failed");
    else
        RedisModule_ReplyWithLongLong(ctx, 1);
    child_pid = -1;
    return REDISMODULE_OK;
}
