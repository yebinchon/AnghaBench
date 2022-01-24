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
struct TYPE_3__ {int length; long long* list; } ;
typedef  TYPE_1__ fsl_t ;
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int LIST_SIZE ; 
 scalar_t__ REDISMODULE_OK ; 
 int /*<<< orphan*/  REDISMODULE_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,long long*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_1__**,int) ; 

int FUNC6(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 3)
        return FUNC4(ctx);

    long long ele;
    if (FUNC3(argv[2],&ele) != REDISMODULE_OK)
        return FUNC0(ctx,"ERR invalid integer");

    fsl_t *fsl;
    if (!FUNC5(ctx, argv[1], REDISMODULE_WRITE, 1, &fsl, 1))
        return REDISMODULE_OK;

    if (fsl->length == LIST_SIZE)
        return FUNC0(ctx,"ERR list is full");

    if (fsl->length != 0 && fsl->list[fsl->length-1] >= ele)
        return FUNC0(ctx,"ERR new element has to be greater than the head element");

    fsl->list[fsl->length++] = ele;

    if (fsl->length >= 2)
        FUNC2(ctx, argv[1]);

    return FUNC1(ctx, "OK");
}