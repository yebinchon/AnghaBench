
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleIO ;
typedef int RedisModuleCtx ;


 int REDISMODULE_AUX_AFTER_RDB ;
 int REDISMODULE_AUX_BEFORE_RDB ;
 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int RedisModule_FreeString (int *,int *) ;
 int * RedisModule_GetContextFromIO (int *) ;
 scalar_t__ RedisModule_IsIOError (int *) ;
 int RedisModule_LoadSigned (int *) ;
 int * RedisModule_LoadString (int *) ;
 int * after_str ;
 int assert (int) ;
 int * before_str ;
 int conf_aux_count ;

int testrdb_aux_load(RedisModuleIO *rdb, int encver, int when) {
    assert(encver == 1);
    if (conf_aux_count==1) assert(when == REDISMODULE_AUX_AFTER_RDB);
    if (conf_aux_count==0) assert(0);
    RedisModuleCtx *ctx = RedisModule_GetContextFromIO(rdb);
    if (when == REDISMODULE_AUX_BEFORE_RDB) {
        if (before_str)
            RedisModule_FreeString(ctx, before_str);
        before_str = ((void*)0);
        int count = RedisModule_LoadSigned(rdb);
        if (RedisModule_IsIOError(rdb))
            return REDISMODULE_ERR;
        if (count)
            before_str = RedisModule_LoadString(rdb);
    } else {
        if (after_str)
            RedisModule_FreeString(ctx, after_str);
        after_str = ((void*)0);
        int count = RedisModule_LoadSigned(rdb);
        if (RedisModule_IsIOError(rdb))
            return REDISMODULE_ERR;
        if (count)
            after_str = RedisModule_LoadString(rdb);
    }
    if (RedisModule_IsIOError(rdb))
        return REDISMODULE_ERR;
    return REDISMODULE_OK;
}
