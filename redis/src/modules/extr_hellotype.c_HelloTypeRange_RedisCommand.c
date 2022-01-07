
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HelloTypeObject {struct HelloTypeNode* head; } ;
struct HelloTypeNode {struct HelloTypeNode* next; int value; } ;
typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;


 scalar_t__ HelloType ;
 char* REDISMODULE_ERRORMSG_WRONGTYPE ;
 int REDISMODULE_KEYTYPE_EMPTY ;
 scalar_t__ REDISMODULE_OK ;
 int REDISMODULE_POSTPONED_ARRAY_LEN ;
 int REDISMODULE_READ ;
 int REDISMODULE_WRITE ;
 int RedisModule_AutoMemory (int *) ;
 int RedisModule_KeyType (int *) ;
 scalar_t__ RedisModule_ModuleTypeGetType (int *) ;
 struct HelloTypeObject* RedisModule_ModuleTypeGetValue (int *) ;
 int * RedisModule_OpenKey (int *,int *,int) ;
 int RedisModule_ReplySetArrayLength (int *,long long) ;
 int RedisModule_ReplyWithArray (int *,int ) ;
 int RedisModule_ReplyWithError (int *,char*) ;
 int RedisModule_ReplyWithLongLong (int *,int ) ;
 scalar_t__ RedisModule_StringToLongLong (int *,long long*) ;
 int RedisModule_WrongArity (int *) ;

int HelloTypeRange_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    RedisModule_AutoMemory(ctx);

    if (argc != 4) return RedisModule_WrongArity(ctx);
    RedisModuleKey *key = RedisModule_OpenKey(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);
    int type = RedisModule_KeyType(key);
    if (type != REDISMODULE_KEYTYPE_EMPTY &&
        RedisModule_ModuleTypeGetType(key) != HelloType)
    {
        return RedisModule_ReplyWithError(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }

    long long first, count;
    if (RedisModule_StringToLongLong(argv[2],&first) != REDISMODULE_OK ||
        RedisModule_StringToLongLong(argv[3],&count) != REDISMODULE_OK ||
        first < 0 || count < 0)
    {
        return RedisModule_ReplyWithError(ctx,
            "ERR invalid first or count parameters");
    }

    struct HelloTypeObject *hto = RedisModule_ModuleTypeGetValue(key);
    struct HelloTypeNode *node = hto ? hto->head : ((void*)0);
    RedisModule_ReplyWithArray(ctx,REDISMODULE_POSTPONED_ARRAY_LEN);
    long long arraylen = 0;
    while(node && count--) {
        RedisModule_ReplyWithLongLong(ctx,node->value);
        arraylen++;
        node = node->next;
    }
    RedisModule_ReplySetArrayLength(ctx,arraylen);
    return REDISMODULE_OK;
}
