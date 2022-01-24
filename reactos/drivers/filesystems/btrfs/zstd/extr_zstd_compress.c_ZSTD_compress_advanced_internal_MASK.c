#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_CCtx_params ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,void*,size_t,void const*,size_t) ; 
 int /*<<< orphan*/  ZSTD_dct_auto ; 
 int /*<<< orphan*/  ZSTD_dtlm_fast ; 
 int /*<<< orphan*/  ZSTDb_not_buffered ; 

size_t FUNC4(
        ZSTD_CCtx* cctx,
        void* dst, size_t dstCapacity,
        const void* src, size_t srcSize,
        const void* dict,size_t dictSize,
        ZSTD_CCtx_params params)
{
    FUNC1(4, "ZSTD_compress_advanced_internal (srcSize:%u)", (U32)srcSize);
    FUNC0( FUNC2(cctx,
                         dict, dictSize, ZSTD_dct_auto, ZSTD_dtlm_fast, NULL,
                         params, srcSize, ZSTDb_not_buffered) );
    return FUNC3(cctx, dst, dstCapacity, src, srcSize);
}