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
typedef  int /*<<< orphan*/  ZSTD_compressionParameters ;
struct TYPE_3__ {scalar_t__ streamStage; int /*<<< orphan*/ * cdictLocal; int /*<<< orphan*/ * cdict; int /*<<< orphan*/  customMem; scalar_t__ pledgedSrcSizePlusOne; int /*<<< orphan*/  requestedParams; scalar_t__ staticSize; } ;
typedef  TYPE_1__ ZSTD_CCtx ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 int /*<<< orphan*/  memory_allocation ; 
 int /*<<< orphan*/  stage_wrong ; 
 scalar_t__ zcss_init ; 

size_t FUNC5(
        ZSTD_CCtx* cctx, const void* dict, size_t dictSize,
        ZSTD_dictLoadMethod_e dictLoadMethod, ZSTD_dictContentType_e dictContentType)
{
    if (cctx->streamStage != zcss_init) return FUNC1(stage_wrong);
    if (cctx->staticSize) return FUNC1(memory_allocation);  /* no malloc for static CCtx */
    FUNC0(4, "ZSTD_CCtx_loadDictionary_advanced (size: %u)", (U32)dictSize);
    FUNC3(cctx->cdictLocal);  /* in case one already exists */
    if (dict==NULL || dictSize==0) {   /* no dictionary mode */
        cctx->cdictLocal = NULL;
        cctx->cdict = NULL;
    } else {
        ZSTD_compressionParameters const cParams =
                FUNC4(&cctx->requestedParams, cctx->pledgedSrcSizePlusOne-1, dictSize);
        cctx->cdictLocal = FUNC2(
                                dict, dictSize,
                                dictLoadMethod, dictContentType,
                                cParams, cctx->customMem);
        cctx->cdict = cctx->cdictLocal;
        if (cctx->cdictLocal == NULL)
            return FUNC1(memory_allocation);
    }
    return 0;
}