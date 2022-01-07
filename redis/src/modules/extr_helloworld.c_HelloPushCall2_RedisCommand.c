
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;
typedef int RedisModuleCallReply ;


 int REDISMODULE_OK ;
 int * RedisModule_Call (int *,char*,char*,int *,int *) ;
 int RedisModule_FreeCallReply (int *) ;
 int RedisModule_ReplyWithCallReply (int *,int *) ;
 int RedisModule_WrongArity (int *) ;

int HelloPushCall2_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    if (argc != 3) return RedisModule_WrongArity(ctx);

    RedisModuleCallReply *reply;

    reply = RedisModule_Call(ctx,"RPUSH","ss",argv[1],argv[2]);
    RedisModule_ReplyWithCallReply(ctx,reply);
    RedisModule_FreeCallReply(reply);
    return REDISMODULE_OK;
}
