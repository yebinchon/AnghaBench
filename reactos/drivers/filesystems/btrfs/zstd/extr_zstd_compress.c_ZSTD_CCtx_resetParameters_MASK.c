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
struct TYPE_3__ {scalar_t__ streamStage; int /*<<< orphan*/  requestedParams; int /*<<< orphan*/ * cdict; } ;
typedef  TYPE_1__ ZSTD_CCtx ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stage_wrong ; 
 scalar_t__ zcss_init ; 

size_t FUNC2(ZSTD_CCtx* cctx)
{
    if (cctx->streamStage != zcss_init) return FUNC0(stage_wrong);
    cctx->cdict = NULL;
    return FUNC1(&cctx->requestedParams);
}