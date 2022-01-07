
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;
typedef int RedisModuleCallReply ;


 scalar_t__ REDISMODULE_ERR ;
 int REDISMODULE_NOT_USED (int) ;
 int REDISMODULE_READ ;
 int REDISMODULE_WRITE ;
 int RedisModule_AutoMemory (int *) ;
 int * RedisModule_Call (int *,char*,char*,char*) ;
 int RedisModule_CallReplyInteger (int *) ;
 int RedisModule_CreateStringPrintf (int *,char*) ;
 int * RedisModule_OpenKey (int *,int ,int) ;
 int RedisModule_ReplyWithSimpleString (int *,char*) ;
 scalar_t__ RedisModule_StringSet (int *,int ) ;
 scalar_t__ RedisModule_UnlinkKey (int *) ;
 int failTest (int *,char*) ;

int TestUnlink(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    RedisModule_AutoMemory(ctx);
    REDISMODULE_NOT_USED(argv);
    REDISMODULE_NOT_USED(argc);

    RedisModuleKey *k = RedisModule_OpenKey(ctx, RedisModule_CreateStringPrintf(ctx, "unlinked"), REDISMODULE_WRITE | REDISMODULE_READ);
    if (!k) return failTest(ctx, "Could not create key");

    if (REDISMODULE_ERR == RedisModule_StringSet(k, RedisModule_CreateStringPrintf(ctx, "Foobar"))) {
        return failTest(ctx, "Could not set string value");
    }

    RedisModuleCallReply *rep = RedisModule_Call(ctx, "EXISTS", "c", "unlinked");
    if (!rep || RedisModule_CallReplyInteger(rep) != 1) {
        return failTest(ctx, "Key does not exist before unlink");
    }

    if (REDISMODULE_ERR == RedisModule_UnlinkKey(k)) {
        return failTest(ctx, "Could not unlink key");
    }

    rep = RedisModule_Call(ctx, "EXISTS", "c", "unlinked");
    if (!rep || RedisModule_CallReplyInteger(rep) != 0) {
        return failTest(ctx, "Could not verify key to be unlinked");
    }
    return RedisModule_ReplyWithSimpleString(ctx, "OK");

}
