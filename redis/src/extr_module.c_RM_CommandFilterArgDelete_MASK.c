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
struct TYPE_3__ {int argc; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_1__ RedisModuleCommandFilterCtx ;

/* Variables and functions */
 int REDISMODULE_ERR ; 
 int REDISMODULE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(RedisModuleCommandFilterCtx *fctx, int pos)
{
    int i;
    if (pos < 0 || pos >= fctx->argc) return REDISMODULE_ERR;

    FUNC0(fctx->argv[pos]);
    for (i = pos; i < fctx->argc-1; i++) {
        fctx->argv[i] = fctx->argv[i+1];
    }
    fctx->argc--;

    return REDISMODULE_OK;
}