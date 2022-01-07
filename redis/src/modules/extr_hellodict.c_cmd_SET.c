
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int Keyspace ;
 int RedisModule_DictSet (int ,int *,int *) ;
 int RedisModule_ReplyWithSimpleString (int *,char*) ;
 int RedisModule_RetainString (int *,int *) ;
 int RedisModule_WrongArity (int *) ;

int cmd_SET(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 3) return RedisModule_WrongArity(ctx);
    RedisModule_DictSet(Keyspace,argv[1],argv[2]);


    RedisModule_RetainString(((void*)0),argv[2]);
    return RedisModule_ReplyWithSimpleString(ctx, "OK");
}
