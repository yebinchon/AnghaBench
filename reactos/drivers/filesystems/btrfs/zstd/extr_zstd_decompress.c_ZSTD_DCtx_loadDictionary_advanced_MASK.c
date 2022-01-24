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
typedef  int /*<<< orphan*/  ZSTD_dictLoadMethod_e ;
typedef  int /*<<< orphan*/  ZSTD_dictContentType_e ;
struct TYPE_3__ {scalar_t__ streamStage; int /*<<< orphan*/ * ddictLocal; int /*<<< orphan*/ * ddict; int /*<<< orphan*/  customMem; } ;
typedef  TYPE_1__ ZSTD_DCtx ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  memory_allocation ; 
 int /*<<< orphan*/  stage_wrong ; 
 scalar_t__ zdss_init ; 

size_t FUNC3(ZSTD_DCtx* dctx,
                                   const void* dict, size_t dictSize,
                                         ZSTD_dictLoadMethod_e dictLoadMethod,
                                         ZSTD_dictContentType_e dictContentType)
{
    if (dctx->streamStage != zdss_init) return FUNC0(stage_wrong);
    FUNC2(dctx->ddictLocal);
    if (dict && dictSize >= 8) {
        dctx->ddictLocal = FUNC1(dict, dictSize, dictLoadMethod, dictContentType, dctx->customMem);
        if (dctx->ddictLocal == NULL) return FUNC0(memory_allocation);
    } else {
        dctx->ddictLocal = NULL;
    }
    dctx->ddict = dctx->ddictLocal;
    return 0;
}