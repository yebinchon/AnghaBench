#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int length; int /*<<< orphan*/ * list; } ;
typedef  TYPE_1__ fsl_t ;
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 scalar_t__ REDISMODULE_OK ; 
 int /*<<< orphan*/  REDISMODULE_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,long long,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,long long*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bpop2_reply_callback ; 
 int /*<<< orphan*/  bpop2_timeout_callback ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**,int) ; 

int FUNC7(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 3)
        return FUNC5(ctx);

    long long timeout;
    if (FUNC4(argv[2],&timeout) != REDISMODULE_OK || timeout < 0)
        return FUNC2(ctx,"ERR invalid timeout");

    fsl_t *fsl;
    if (!FUNC6(ctx, argv[1], REDISMODULE_READ, 0, &fsl, 1))
        return REDISMODULE_OK;

    if (!fsl || fsl->length < 2) {
        /* Key is empty or has <2 elements, we must block */
        FUNC0(ctx, bpop2_reply_callback, bpop2_timeout_callback,
                                      NULL, timeout, &argv[1], 1, NULL);
    } else {
        FUNC1(ctx, 2);
        FUNC3(ctx, fsl->list[--fsl->length]);
        FUNC3(ctx, fsl->list[--fsl->length]);
    }

    return REDISMODULE_OK;
}