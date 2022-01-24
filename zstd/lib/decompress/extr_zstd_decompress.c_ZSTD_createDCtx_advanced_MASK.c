#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  customFree; int /*<<< orphan*/  customAlloc; } ;
typedef  TYPE_1__ ZSTD_customMem ;
struct TYPE_8__ {TYPE_1__ customMem; } ;
typedef  TYPE_2__ ZSTD_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__* const) ; 
 scalar_t__ FUNC1 (int,TYPE_1__) ; 

ZSTD_DCtx* FUNC2(ZSTD_customMem customMem)
{
    if (!customMem.customAlloc ^ !customMem.customFree) return NULL;

    {   ZSTD_DCtx* const dctx = (ZSTD_DCtx*)FUNC1(sizeof(*dctx), customMem);
        if (!dctx) return NULL;
        dctx->customMem = customMem;
        FUNC0(dctx);
        return dctx;
    }
}