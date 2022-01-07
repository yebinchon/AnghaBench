
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fsl_t ;
typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;


 int REDISMODULE_ERRORMSG_WRONGTYPE ;
 int REDISMODULE_KEYTYPE_EMPTY ;
 int RedisModule_CloseKey (int *) ;
 int RedisModule_KeyType (int *) ;
 scalar_t__ RedisModule_ModuleTypeGetType (int *) ;
 int * RedisModule_ModuleTypeGetValue (int *) ;
 int RedisModule_ModuleTypeSetValue (int *,scalar_t__,int *) ;
 int * RedisModule_OpenKey (int *,int *,int) ;
 int RedisModule_ReplyWithError (int *,int ) ;
 int * fsl_type_create () ;
 scalar_t__ fsltype ;

int get_fsl(RedisModuleCtx *ctx, RedisModuleString *keyname, int mode, int create, fsl_t **fsl, int reply_on_failure) {
    RedisModuleKey *key = RedisModule_OpenKey(ctx, keyname, mode);

    int type = RedisModule_KeyType(key);
    if (type != REDISMODULE_KEYTYPE_EMPTY && RedisModule_ModuleTypeGetType(key) != fsltype) {
        RedisModule_CloseKey(key);
        if (reply_on_failure)
            RedisModule_ReplyWithError(ctx, REDISMODULE_ERRORMSG_WRONGTYPE);
        return 0;
    }


    if (type == REDISMODULE_KEYTYPE_EMPTY) {
        if (!create) {

            RedisModule_CloseKey(key);
            *fsl = ((void*)0);
            return 1;
        }
        *fsl = fsl_type_create();
        RedisModule_ModuleTypeSetValue(key, fsltype, *fsl);
    } else {
        *fsl = RedisModule_ModuleTypeGetValue(key);
    }

    RedisModule_CloseKey(key);
    return 1;
}
