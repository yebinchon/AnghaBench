
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int Keyspace ;
 int * RedisModule_DictGet (int ,int *,int *) ;
 int RedisModule_ReplyWithNull (int *) ;
 int RedisModule_ReplyWithString (int *,int *) ;
 int RedisModule_WrongArity (int *) ;

int cmd_GET(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 2) return RedisModule_WrongArity(ctx);
    RedisModuleString *val = RedisModule_DictGet(Keyspace,argv[1],((void*)0));
    if (val == ((void*)0)) {
        return RedisModule_ReplyWithNull(ctx);
    } else {
        return RedisModule_ReplyWithString(ctx, val);
    }
}
