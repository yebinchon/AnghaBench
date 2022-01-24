#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_customMem ;
struct TYPE_4__ {int /*<<< orphan*/  previousLegacyVersion; scalar_t__ legacyContext; struct TYPE_4__* inBuff; int /*<<< orphan*/ * ddictLocal; int /*<<< orphan*/  customMem; scalar_t__ staticSize; } ;
typedef  TYPE_1__ ZSTD_DCtx ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memory_allocation ; 

size_t FUNC4(ZSTD_DCtx* dctx)
{
    if (dctx==NULL) return 0;   /* support free on NULL */
    if (dctx->staticSize) return FUNC0(memory_allocation);   /* not compatible with static DCtx */
    {   ZSTD_customMem const cMem = dctx->customMem;
        FUNC2(dctx->ddictLocal);
        dctx->ddictLocal = NULL;
        FUNC1(dctx->inBuff, cMem);
        dctx->inBuff = NULL;
#if defined(ZSTD_LEGACY_SUPPORT) && (ZSTD_LEGACY_SUPPORT >= 1)
        if (dctx->legacyContext)
            ZSTD_freeLegacyStreamContext(dctx->legacyContext, dctx->previousLegacyVersion);
#endif
        FUNC1(dctx, cMem);
        return 0;
    }
}