
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;
typedef int RedisModuleCallReply ;


 int REDISMODULE_OK ;
 int * RedisModule_Call (int *,char*,char*,int *,int *) ;
 long long RedisModule_CallReplyInteger (int *) ;
 int RedisModule_FreeCallReply (int *) ;
 int RedisModule_ReplyWithLongLong (int *,long long) ;
 int RedisModule_WrongArity (int *) ;

int HelloPushCall_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    if (argc != 3) return RedisModule_WrongArity(ctx);

    RedisModuleCallReply *reply;

    reply = RedisModule_Call(ctx,"RPUSH","ss",argv[1],argv[2]);
    long long len = RedisModule_CallReplyInteger(reply);
    RedisModule_FreeCallReply(reply);
    RedisModule_ReplyWithLongLong(ctx,len);
    return REDISMODULE_OK;
}
