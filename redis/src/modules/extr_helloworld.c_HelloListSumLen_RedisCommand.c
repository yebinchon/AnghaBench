
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;
typedef int RedisModuleCallReply ;


 int REDISMODULE_OK ;
 int * RedisModule_Call (int *,char*,char*,int *,long long,long long) ;
 int * RedisModule_CallReplyArrayElement (int *,size_t) ;
 size_t RedisModule_CallReplyLength (int *) ;
 int RedisModule_FreeCallReply (int *) ;
 int RedisModule_ReplyWithLongLong (int *,size_t) ;
 int RedisModule_WrongArity (int *) ;

int HelloListSumLen_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    if (argc != 2) return RedisModule_WrongArity(ctx);

    RedisModuleCallReply *reply;

    reply = RedisModule_Call(ctx,"LRANGE","sll",argv[1],(long long)0,(long long)-1);
    size_t strlen = 0;
    size_t items = RedisModule_CallReplyLength(reply);
    size_t j;
    for (j = 0; j < items; j++) {
        RedisModuleCallReply *ele = RedisModule_CallReplyArrayElement(reply,j);
        strlen += RedisModule_CallReplyLength(ele);
    }
    RedisModule_FreeCallReply(reply);
    RedisModule_ReplyWithLongLong(ctx,strlen);
    return REDISMODULE_OK;
}
