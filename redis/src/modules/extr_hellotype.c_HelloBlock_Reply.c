
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;


 scalar_t__ HelloType ;
 int HelloTypeRange_RedisCommand (int *,int **,int) ;
 int REDISMODULE_ERR ;
 int REDISMODULE_KEYTYPE_MODULE ;
 int REDISMODULE_NOT_USED (int) ;
 int REDISMODULE_READ ;
 int RedisModule_CloseKey (int *) ;
 int * RedisModule_GetBlockedClientReadyKey (int *) ;
 int RedisModule_KeyType (int *) ;
 scalar_t__ RedisModule_ModuleTypeGetType (int *) ;
 int * RedisModule_OpenKey (int *,int *,int ) ;

int HelloBlock_Reply(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    REDISMODULE_NOT_USED(argv);
    REDISMODULE_NOT_USED(argc);

    RedisModuleString *keyname = RedisModule_GetBlockedClientReadyKey(ctx);
    RedisModuleKey *key = RedisModule_OpenKey(ctx,keyname,REDISMODULE_READ);
    int type = RedisModule_KeyType(key);
    if (type != REDISMODULE_KEYTYPE_MODULE ||
        RedisModule_ModuleTypeGetType(key) != HelloType)
    {
        RedisModule_CloseKey(key);
        return REDISMODULE_ERR;
    }



    RedisModule_CloseKey(key);
    return HelloTypeRange_RedisCommand(ctx,argv,argc-1);
}
