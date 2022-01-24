#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_customMem ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;
struct TYPE_5__ {int totalCCtx; int availCCtx; int /*<<< orphan*/ * cctx; int /*<<< orphan*/  cMem; int /*<<< orphan*/  poolMutex; } ;
typedef  TYPE_1__ ZSTDMT_CCtxPool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__* const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static ZSTDMT_CCtxPool* FUNC7(int nbWorkers,
                                              ZSTD_customMem cMem)
{
    ZSTDMT_CCtxPool* const cctxPool = (ZSTDMT_CCtxPool*) FUNC2(
        sizeof(ZSTDMT_CCtxPool) + (nbWorkers-1)*sizeof(ZSTD_CCtx*), cMem);
    FUNC6(nbWorkers > 0);
    if (!cctxPool) return NULL;
    if (FUNC5(&cctxPool->poolMutex, NULL)) {
        FUNC4(cctxPool, cMem);
        return NULL;
    }
    cctxPool->cMem = cMem;
    cctxPool->totalCCtx = nbWorkers;
    cctxPool->availCCtx = 1;   /* at least one cctx for single-thread mode */
    cctxPool->cctx[0] = FUNC3(cMem);
    if (!cctxPool->cctx[0]) { FUNC1(cctxPool); return NULL; }
    FUNC0(3, "cctxPool created, with %u workers", nbWorkers);
    return cctxPool;
}