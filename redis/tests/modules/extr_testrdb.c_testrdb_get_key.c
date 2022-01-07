
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;


 int REDISMODULE_OK ;
 int REDISMODULE_WRITE ;
 int RedisModule_CloseKey (int *) ;
 int * RedisModule_ModuleTypeGetValue (int *) ;
 int * RedisModule_OpenKey (int *,int *,int ) ;
 int RedisModule_ReplyWithString (int *,int *) ;
 int RedisModule_WrongArity (int *) ;

int testrdb_get_key(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    if (argc != 2){
        RedisModule_WrongArity(ctx);
        return REDISMODULE_OK;
    }

    RedisModuleKey *key = RedisModule_OpenKey(ctx, argv[1], REDISMODULE_WRITE);
    RedisModuleString *str = RedisModule_ModuleTypeGetValue(key);
    RedisModule_CloseKey(key);
    RedisModule_ReplyWithString(ctx, str);
    return REDISMODULE_OK;
}
