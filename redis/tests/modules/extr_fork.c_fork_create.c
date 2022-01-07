
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_OK ;
 int RedisModule_ExitFromChild (long long) ;
 scalar_t__ RedisModule_Fork (int ,void*) ;
 int RedisModule_Log (int *,char*,char*) ;
 int RedisModule_ReplyWithError (int *,char*) ;
 int RedisModule_ReplyWithLongLong (int *,scalar_t__) ;
 int RedisModule_StringToLongLong (int *,long long*) ;
 int RedisModule_WrongArity (int *) ;
 scalar_t__ child_pid ;
 int done_handler ;
 int exitted_with_code ;
 int usleep (int) ;

int fork_create(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    long long code_to_exit_with;
    if (argc != 2) {
        RedisModule_WrongArity(ctx);
        return REDISMODULE_OK;
    }
    RedisModule_StringToLongLong(argv[1], &code_to_exit_with);
    exitted_with_code = -1;
    child_pid = RedisModule_Fork(done_handler, (void*)0xdeadbeef);
    if (child_pid < 0) {
        RedisModule_ReplyWithError(ctx, "Fork failed");
        return REDISMODULE_OK;
    } else if (child_pid > 0) {

        RedisModule_ReplyWithLongLong(ctx, child_pid);
        return REDISMODULE_OK;
    }


    RedisModule_Log(ctx, "notice", "fork child started");
    usleep(200000);
    RedisModule_Log(ctx, "notice", "fork child exiting");
    RedisModule_ExitFromChild(code_to_exit_with);

    return 0;
}
