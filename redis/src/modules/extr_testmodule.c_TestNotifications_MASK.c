#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;
typedef  int /*<<< orphan*/  RedisModuleCallReply ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ REDISMODULE_REPLY_NULL ; 
 scalar_t__ REDISMODULE_REPLY_STRING ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,char*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 

int FUNC6(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC1(argv);
    FUNC1(argc);

#define FAIL(msg, ...)                                                                       \
    {                                                                                        \
        RedisModule_Log(ctx, "warning", "Failed NOTIFY Test. Reason: " #msg, ##__VA_ARGS__); \
        goto err;                                                                            \
    }
    FUNC2(ctx, "FLUSHDB", "");

    FUNC2(ctx, "SET", "cc", "foo", "bar");
    FUNC2(ctx, "SET", "cc", "foo", "baz");
    FUNC2(ctx, "SADD", "cc", "bar", "x");
    FUNC2(ctx, "SADD", "cc", "bar", "y");

    FUNC2(ctx, "HSET", "ccc", "baz", "x", "y");
    /* LPUSH should be ignored and not increment any counters */
    FUNC2(ctx, "LPUSH", "cc", "l", "y");
    FUNC2(ctx, "LPUSH", "cc", "l", "y");

    /* Miss some keys intentionally so we will get a "keymiss" notification. */
    FUNC2(ctx, "GET", "c", "nosuchkey");
    FUNC2(ctx, "SMEMBERS", "c", "nosuchkey");

    size_t sz;
    const char *rep;
    RedisModuleCallReply *r = FUNC2(ctx, "HGET", "cc", "notifications", "foo");
    if (r == NULL || FUNC4(r) != REDISMODULE_REPLY_STRING) {
        FAIL("Wrong or no reply for foo");
    } else {
        rep = FUNC3(r, &sz);
        if (sz != 1 || *rep != '2') {
            FAIL("Got reply '%s'. expected '2'", FUNC3(r, NULL));
        }
    }

    r = FUNC2(ctx, "HGET", "cc", "notifications", "bar");
    if (r == NULL || FUNC4(r) != REDISMODULE_REPLY_STRING) {
        FAIL("Wrong or no reply for bar");
    } else {
        rep = FUNC3(r, &sz);
        if (sz != 1 || *rep != '2') {
            FAIL("Got reply '%s'. expected '2'", rep);
        }
    }

    r = FUNC2(ctx, "HGET", "cc", "notifications", "baz");
    if (r == NULL || FUNC4(r) != REDISMODULE_REPLY_STRING) {
        FAIL("Wrong or no reply for baz");
    } else {
        rep = FUNC3(r, &sz);
        if (sz != 1 || *rep != '1') {
            FAIL("Got reply '%.*s'. expected '1'", sz, rep);
        }
    }
    /* For l we expect nothing since we didn't subscribe to list events */
    r = FUNC2(ctx, "HGET", "cc", "notifications", "l");
    if (r == NULL || FUNC4(r) != REDISMODULE_REPLY_NULL) {
        FAIL("Wrong reply for l");
    }

    r = FUNC2(ctx, "HGET", "cc", "notifications", "nosuchkey");
    if (r == NULL || FUNC4(r) != REDISMODULE_REPLY_STRING) {
        FAIL("Wrong or no reply for nosuchkey");
    } else {
        rep = FUNC3(r, &sz);
        if (sz != 1 || *rep != '2') {
            FAIL("Got reply '%.*s'. expected '2'", sz, rep);
        }
    }

    FUNC2(ctx, "FLUSHDB", "");

    return FUNC5(ctx, "OK");
err:
    FUNC2(ctx, "FLUSHDB", "");

    return FUNC5(ctx, "ERR");
}