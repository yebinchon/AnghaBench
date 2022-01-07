
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;


 int REDISMODULE_ERRORMSG_WRONGTYPE ;
 int REDISMODULE_KEYTYPE_EMPTY ;
 int REDISMODULE_KEYTYPE_STRING ;
 int REDISMODULE_OK ;
 int REDISMODULE_READ ;
 int REDISMODULE_WRITE ;
 int RedisModule_CloseKey (int *) ;
 int RedisModule_KeyType (int *) ;
 int * RedisModule_OpenKey (int *,int *,int) ;
 int RedisModule_ReplicateVerbatim (int *) ;
 int RedisModule_ReplyWithError (int *,int ) ;
 int RedisModule_ReplyWithSimpleString (int *,char*) ;
 char* RedisModule_StringDMA (int *,size_t*,int) ;
 int RedisModule_WrongArity (int *) ;
 scalar_t__ isupper (char) ;
 char tolower (char) ;
 char toupper (char) ;

int HelloToggleCase_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 2) return RedisModule_WrongArity(ctx);

    RedisModuleKey *key = RedisModule_OpenKey(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);

    int keytype = RedisModule_KeyType(key);
    if (keytype != REDISMODULE_KEYTYPE_STRING &&
        keytype != REDISMODULE_KEYTYPE_EMPTY)
    {
        RedisModule_CloseKey(key);
        return RedisModule_ReplyWithError(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }

    if (keytype == REDISMODULE_KEYTYPE_STRING) {
        size_t len, j;
        char *s = RedisModule_StringDMA(key,&len,REDISMODULE_WRITE);
        for (j = 0; j < len; j++) {
            if (isupper(s[j])) {
                s[j] = tolower(s[j]);
            } else {
                s[j] = toupper(s[j]);
            }
        }
    }

    RedisModule_CloseKey(key);
    RedisModule_ReplyWithSimpleString(ctx,"OK");
    RedisModule_ReplicateVerbatim(ctx);
    return REDISMODULE_OK;
}
