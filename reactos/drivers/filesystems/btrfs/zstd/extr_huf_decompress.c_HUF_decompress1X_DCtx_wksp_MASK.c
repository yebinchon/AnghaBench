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
typedef  scalar_t__ U32 ;
typedef  int /*<<< orphan*/  HUF_DTable ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,void*,size_t,void const*,size_t,void*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,void*,size_t,void const*,size_t,void*,size_t) ; 
 scalar_t__ FUNC3 (size_t,size_t) ; 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 
 int /*<<< orphan*/  FUNC4 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/  const,size_t) ; 

size_t FUNC6(HUF_DTable* dctx, void* dst, size_t dstSize,
                                  const void* cSrc, size_t cSrcSize,
                                  void* workSpace, size_t wkspSize)
{
    /* validation checks */
    if (dstSize == 0) return FUNC0(dstSize_tooSmall);
    if (cSrcSize > dstSize) return FUNC0(corruption_detected);   /* invalid */
    if (cSrcSize == dstSize) { FUNC4(dst, cSrc, dstSize); return dstSize; }   /* not compressed */
    if (cSrcSize == 1) { FUNC5(dst, *(const BYTE*)cSrc, dstSize); return dstSize; }   /* RLE */

    {   U32 const algoNb = FUNC3(dstSize, cSrcSize);
        return algoNb ? FUNC2(dctx, dst, dstSize, cSrc,
                                cSrcSize, workSpace, wkspSize):
                        FUNC1(dctx, dst, dstSize, cSrc,
                                cSrcSize, workSpace, wkspSize);
    }
}