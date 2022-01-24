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
typedef  int /*<<< orphan*/  ZSTD_parameters ;
typedef  int /*<<< orphan*/  ZSTD_CCtx_params ;
struct TYPE_4__ {int /*<<< orphan*/  requestedParams; } ;
typedef  TYPE_1__ ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  ZSTD_CONTENTSIZE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 size_t FUNC2 (TYPE_1__*,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_dct_auto ; 
 int /*<<< orphan*/  ZSTD_dtlm_fast ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  ZSTDb_not_buffered ; 

size_t FUNC4(ZSTD_CCtx* cctx, const void* dict, size_t dictSize, int compressionLevel)
{
    ZSTD_parameters const params = FUNC3(compressionLevel, ZSTD_CONTENTSIZE_UNKNOWN, dictSize);
    ZSTD_CCtx_params const cctxParams =
            FUNC1(&cctx->requestedParams, &params);
    FUNC0(4, "ZSTD_compressBegin_usingDict (dictSize=%u)", (unsigned)dictSize);
    return FUNC2(cctx, dict, dictSize, ZSTD_dct_auto, ZSTD_dtlm_fast, NULL,
                                       &cctxParams, ZSTD_CONTENTSIZE_UNKNOWN, ZSTDb_not_buffered);
}