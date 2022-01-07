
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;
typedef int RedisModuleCallReply ;


 int FAIL (char*,...) ;
 int REDISMODULE_NOT_USED (int) ;
 scalar_t__ REDISMODULE_REPLY_NULL ;
 scalar_t__ REDISMODULE_REPLY_STRING ;
 int * RedisModule_Call (int *,char*,char*,...) ;
 char* RedisModule_CallReplyStringPtr (int *,size_t*) ;
 scalar_t__ RedisModule_CallReplyType (int *) ;
 int RedisModule_ReplyWithSimpleString (int *,char*) ;

int TestNotifications(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    REDISMODULE_NOT_USED(argv);
    REDISMODULE_NOT_USED(argc);






    RedisModule_Call(ctx, "FLUSHDB", "");

    RedisModule_Call(ctx, "SET", "cc", "foo", "bar");
    RedisModule_Call(ctx, "SET", "cc", "foo", "baz");
    RedisModule_Call(ctx, "SADD", "cc", "bar", "x");
    RedisModule_Call(ctx, "SADD", "cc", "bar", "y");

    RedisModule_Call(ctx, "HSET", "ccc", "baz", "x", "y");

    RedisModule_Call(ctx, "LPUSH", "cc", "l", "y");
    RedisModule_Call(ctx, "LPUSH", "cc", "l", "y");


    RedisModule_Call(ctx, "GET", "c", "nosuchkey");
    RedisModule_Call(ctx, "SMEMBERS", "c", "nosuchkey");

    size_t sz;
    const char *rep;
    RedisModuleCallReply *r = RedisModule_Call(ctx, "HGET", "cc", "notifications", "foo");
    if (r == ((void*)0) || RedisModule_CallReplyType(r) != REDISMODULE_REPLY_STRING) {
        { RedisModule_Log(ctx, "warning", "Failed NOTIFY Test. Reason: " "\"Wrong or no reply for foo\""); goto err; };
    } else {
        rep = RedisModule_CallReplyStringPtr(r, &sz);
        if (sz != 1 || *rep != '2') {
            { RedisModule_Log(ctx, "warning", "Failed NOTIFY Test. Reason: " "\"Got reply '%s'. expected '2'\"", RedisModule_CallReplyStringPtr(r, ((void*)0))); goto err; };
        }
    }

    r = RedisModule_Call(ctx, "HGET", "cc", "notifications", "bar");
    if (r == ((void*)0) || RedisModule_CallReplyType(r) != REDISMODULE_REPLY_STRING) {
        { RedisModule_Log(ctx, "warning", "Failed NOTIFY Test. Reason: " "\"Wrong or no reply for bar\""); goto err; };
    } else {
        rep = RedisModule_CallReplyStringPtr(r, &sz);
        if (sz != 1 || *rep != '2') {
            { RedisModule_Log(ctx, "warning", "Failed NOTIFY Test. Reason: " "\"Got reply '%s'. expected '2'\"", rep); goto err; };
        }
    }

    r = RedisModule_Call(ctx, "HGET", "cc", "notifications", "baz");
    if (r == ((void*)0) || RedisModule_CallReplyType(r) != REDISMODULE_REPLY_STRING) {
        { RedisModule_Log(ctx, "warning", "Failed NOTIFY Test. Reason: " "\"Wrong or no reply for baz\""); goto err; };
    } else {
        rep = RedisModule_CallReplyStringPtr(r, &sz);
        if (sz != 1 || *rep != '1') {
            { RedisModule_Log(ctx, "warning", "Failed NOTIFY Test. Reason: " "\"Got reply '%.*s'. expected '1'\"", sz, rep); goto err; };
        }
    }

    r = RedisModule_Call(ctx, "HGET", "cc", "notifications", "l");
    if (r == ((void*)0) || RedisModule_CallReplyType(r) != REDISMODULE_REPLY_NULL) {
        { RedisModule_Log(ctx, "warning", "Failed NOTIFY Test. Reason: " "\"Wrong reply for l\""); goto err; };
    }

    r = RedisModule_Call(ctx, "HGET", "cc", "notifications", "nosuchkey");
    if (r == ((void*)0) || RedisModule_CallReplyType(r) != REDISMODULE_REPLY_STRING) {
        { RedisModule_Log(ctx, "warning", "Failed NOTIFY Test. Reason: " "\"Wrong or no reply for nosuchkey\""); goto err; };
    } else {
        rep = RedisModule_CallReplyStringPtr(r, &sz);
        if (sz != 1 || *rep != '2') {
            { RedisModule_Log(ctx, "warning", "Failed NOTIFY Test. Reason: " "\"Got reply '%.*s'. expected '2'\"", sz, rep); goto err; };
        }
    }

    RedisModule_Call(ctx, "FLUSHDB", "");

    return RedisModule_ReplyWithSimpleString(ctx, "OK");
err:
    RedisModule_Call(ctx, "FLUSHDB", "");

    return RedisModule_ReplyWithSimpleString(ctx, "ERR");
}
