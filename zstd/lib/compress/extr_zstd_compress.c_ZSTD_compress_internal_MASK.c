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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 size_t FUNC2 (TYPE_1__*,void*,size_t,void const*,size_t,void const*,size_t,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static size_t FUNC3 (ZSTD_CCtx* cctx,
                                      void* dst, size_t dstCapacity,
                                const void* src, size_t srcSize,
                                const void* dict,size_t dictSize,
                                const ZSTD_parameters* params)
{
    ZSTD_CCtx_params const cctxParams =
            FUNC1(&cctx->requestedParams, params);
    FUNC0(4, "ZSTD_compress_internal");
    return FUNC2(cctx,
                                           dst, dstCapacity,
                                           src, srcSize,
                                           dict, dictSize,
                                           &cctxParams);
}