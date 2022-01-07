
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_OK ;
 int RedisModule_AutoMemory (int *) ;
 int * RedisModule_CreateStringPrintf (int *,char*,int,int ,int ) ;
 int RedisModule_ReplyWithString (int *,int *) ;
 int RedisModule_StringPtrLen (int *,int *) ;
 int RedisModule_WrongArity (int *) ;

int TestStringPrintf(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    RedisModule_AutoMemory(ctx);
    if (argc < 3) {
        return RedisModule_WrongArity(ctx);
    }
    RedisModuleString *s = RedisModule_CreateStringPrintf(ctx,
        "Got %d args. argv[1]: %s, argv[2]: %s",
        argc,
        RedisModule_StringPtrLen(argv[1], ((void*)0)),
        RedisModule_StringPtrLen(argv[2], ((void*)0))
    );

    RedisModule_ReplyWithString(ctx,s);

    return REDISMODULE_OK;
}
