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
typedef  int /*<<< orphan*/  ZSTD_CCtx ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,void*,size_t,void const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

size_t FUNC3(ZSTD_CCtx* cctx,
                         void* dst, size_t dstCapacity,
                   const void* src, size_t srcSize,
                         int compressionLevel)
{
    FUNC0(4, "ZSTD_compressCCtx (srcSize=%u)", (U32)srcSize);
    FUNC2(cctx != NULL);
    return FUNC1(cctx, dst, dstCapacity, src, srcSize, NULL, 0, compressionLevel);
}