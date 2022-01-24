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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int REDISMODULE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 

int FUNC6(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC0(argv);
    FUNC0(argc);

    FUNC1(ctx);
    RedisModuleCallReply *reply;

    /* Make sure the DB is empty before to proceed. */
    FUNC3("dbsize","");
    if (!FUNC4(ctx,reply,0)) goto fail;

    FUNC3("ping","");
    if (!FUNC5(ctx,reply,"PONG",4)) goto fail;

    FUNC3("test.call","");
    if (!FUNC5(ctx,reply,"OK",2)) goto fail;

    FUNC3("test.ctxflags","");
    if (!FUNC5(ctx,reply,"OK",2)) goto fail;

    FUNC3("test.string.append","");
    if (!FUNC5(ctx,reply,"foobar",6)) goto fail;

    FUNC3("test.unlink","");
    if (!FUNC5(ctx,reply,"OK",2)) goto fail;

    FUNC3("test.string.append.am","");
    if (!FUNC5(ctx,reply,"foobar",6)) goto fail;

    FUNC3("test.string.printf", "cc", "foo", "bar");
    if (!FUNC5(ctx,reply,"Got 3 args. argv[1]: foo, argv[2]: bar",38)) goto fail;

    FUNC3("test.notify", "");
    if (!FUNC5(ctx,reply,"OK",2)) goto fail;

    FUNC2(ctx,"ALL TESTS PASSED");
    return REDISMODULE_OK;

fail:
    FUNC2(ctx,
        "SOME TEST NOT PASSED! Check server logs");
    return REDISMODULE_OK;
}