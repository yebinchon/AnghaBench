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

/* Variables and functions */
 int REDISMODULE_OK ; 
 int /*<<< orphan*/  FUNC0 (long long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,long long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ child_pid ; 
 int /*<<< orphan*/  done_handler ; 
 int exitted_with_code ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    long long code_to_exit_with;
    if (argc != 2) {
        FUNC6(ctx);
        return REDISMODULE_OK;
    }
    FUNC5(argv[1], &code_to_exit_with);
    exitted_with_code = -1;
    child_pid = FUNC1(done_handler, (void*)0xdeadbeef);
    if (child_pid < 0) {
        FUNC3(ctx, "Fork failed");
        return REDISMODULE_OK;
    } else if (child_pid > 0) {
        /* parent */
        FUNC4(ctx, child_pid);
        return REDISMODULE_OK;
    }

    /* child */
    FUNC2(ctx, "notice", "fork child started");
    FUNC7(200000);
    FUNC2(ctx, "notice", "fork child exiting");
    FUNC0(code_to_exit_with);
    /* unreachable */
    return 0;
}