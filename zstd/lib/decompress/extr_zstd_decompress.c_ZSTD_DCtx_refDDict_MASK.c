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
typedef  int /*<<< orphan*/  ZSTD_DDict ;
struct TYPE_4__ {scalar_t__ streamStage; int /*<<< orphan*/  dictUses; int /*<<< orphan*/  const* ddict; } ;
typedef  TYPE_1__ ZSTD_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ZSTD_use_indefinitely ; 
 int /*<<< orphan*/  stage_wrong ; 
 scalar_t__ zdss_init ; 

size_t FUNC2(ZSTD_DCtx* dctx, const ZSTD_DDict* ddict)
{
    FUNC0(dctx->streamStage != zdss_init, stage_wrong);
    FUNC1(dctx);
    if (ddict) {
        dctx->ddict = ddict;
        dctx->dictUses = ZSTD_use_indefinitely;
    }
    return 0;
}