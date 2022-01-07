
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_NOT_USED (int) ;
 int REDISMODULE_OK ;
 int RedisModule_AutoMemory (int *) ;
 int RedisModule_Call (int *,char*,char*,char*) ;
 int RedisModule_Replicate (int *,char*,char*,char*) ;
 int RedisModule_ReplyWithLongLong (int *,int ) ;

int HelloRepl1_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    REDISMODULE_NOT_USED(argv);
    REDISMODULE_NOT_USED(argc);
    RedisModule_AutoMemory(ctx);
    RedisModule_Replicate(ctx,"ECHO","c","foo");



    RedisModule_Call(ctx,"INCR","c!","foo");
    RedisModule_Call(ctx,"INCR","c!","bar");

    RedisModule_ReplyWithLongLong(ctx,0);

    return REDISMODULE_OK;
}
