
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;
typedef int RedisModuleCallReply ;


 int REDISMODULE_OK ;
 int * RedisModule_Call (int *,char const*,char*,int **,int) ;
 int RedisModule_FreeCallReply (int *) ;
 int RedisModule_ReplyWithCallReply (int *,int *) ;
 int RedisModule_ReplyWithError (int *,int ) ;
 char* RedisModule_StringPtrLen (int *,int *) ;
 int RedisModule_WrongArity (int *) ;
 int errno ;
 int strerror (int ) ;

int test_call_generic(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    if (argc<2) {
        RedisModule_WrongArity(ctx);
        return REDISMODULE_OK;
    }

    const char* cmdname = RedisModule_StringPtrLen(argv[1], ((void*)0));
    RedisModuleCallReply *reply = RedisModule_Call(ctx, cmdname, "v", argv+2, argc-2);
    if (reply) {
        RedisModule_ReplyWithCallReply(ctx, reply);
        RedisModule_FreeCallReply(reply);
    } else {
        RedisModule_ReplyWithError(ctx, strerror(errno));
    }
    return REDISMODULE_OK;
}
