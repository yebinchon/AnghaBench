
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
 int RedisModule_FreeString (int *,int *) ;
 int * RedisModule_ModuleTypeGetValue (int *) ;
 int RedisModule_ModuleTypeSetValue (int *,int ,int *) ;
 int * RedisModule_OpenKey (int *,int *,int ) ;
 int RedisModule_ReplyWithLongLong (int *,int) ;
 int RedisModule_RetainString (int *,int *) ;
 int RedisModule_WrongArity (int *) ;
 int testrdb_type ;

int testrdb_set_key(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    if (argc != 3){
        RedisModule_WrongArity(ctx);
        return REDISMODULE_OK;
    }

    RedisModuleKey *key = RedisModule_OpenKey(ctx, argv[1], REDISMODULE_WRITE);
    RedisModuleString *str = RedisModule_ModuleTypeGetValue(key);
    if (str)
        RedisModule_FreeString(ctx, str);
    RedisModule_ModuleTypeSetValue(key, testrdb_type, argv[2]);
    RedisModule_RetainString(ctx, argv[2]);
    RedisModule_CloseKey(key);
    RedisModule_ReplyWithLongLong(ctx, 1);
    return REDISMODULE_OK;
}
