#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ nbWorkers; } ;
struct TYPE_5__ {int /*<<< orphan*/  mtctx; TYPE_1__ appliedParams; } ;
typedef  TYPE_2__ ZSTD_CCtx ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 

size_t FUNC1(ZSTD_CCtx* cctx)
{
#ifdef ZSTD_MULTITHREAD
    if (cctx->appliedParams.nbWorkers > 0) {
        return ZSTDMT_toFlushNow(cctx->mtctx);
    }
#endif
    (void)cctx;
    return 0;   /* over-simplification; could also check if context is currently running in streaming mode, and in which case, report how many bytes are left to be flushed within output buffer */
}