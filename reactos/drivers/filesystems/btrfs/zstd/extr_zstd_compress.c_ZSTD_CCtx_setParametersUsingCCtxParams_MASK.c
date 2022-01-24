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
typedef  int /*<<< orphan*/  ZSTD_CCtx_params ;
struct TYPE_3__ {scalar_t__ streamStage; int /*<<< orphan*/  requestedParams; scalar_t__ cdict; } ;
typedef  TYPE_1__ ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stage_wrong ; 
 scalar_t__ zcss_init ; 

size_t FUNC2(
        ZSTD_CCtx* cctx, const ZSTD_CCtx_params* params)
{
    FUNC0(4, "ZSTD_CCtx_setParametersUsingCCtxParams");
    if (cctx->streamStage != zcss_init) return FUNC1(stage_wrong);
    if (cctx->cdict) return FUNC1(stage_wrong);

    cctx->requestedParams = *params;
    return 0;
}