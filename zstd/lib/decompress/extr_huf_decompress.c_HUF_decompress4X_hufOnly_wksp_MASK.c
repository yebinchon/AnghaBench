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
typedef  int U32 ;
typedef  int /*<<< orphan*/  HUF_DTable ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,void*,size_t,void const*,size_t,void*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,void*,size_t,void const*,size_t,void*,size_t) ; 
 int FUNC3 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 

size_t FUNC5(HUF_DTable* dctx, void* dst,
                                     size_t dstSize, const void* cSrc,
                                     size_t cSrcSize, void* workSpace,
                                     size_t wkspSize)
{
    /* validation checks */
    if (dstSize == 0) return FUNC0(dstSize_tooSmall);
    if (cSrcSize == 0) return FUNC0(corruption_detected);

    {   U32 const algoNb = FUNC3(dstSize, cSrcSize);
#if defined(HUF_FORCE_DECOMPRESS_X1)
        (void)algoNb;
        assert(algoNb == 0);
        return HUF_decompress4X1_DCtx_wksp(dctx, dst, dstSize, cSrc, cSrcSize, workSpace, wkspSize);
#elif defined(HUF_FORCE_DECOMPRESS_X2)
        (void)algoNb;
        assert(algoNb == 1);
        return HUF_decompress4X2_DCtx_wksp(dctx, dst, dstSize, cSrc, cSrcSize, workSpace, wkspSize);
#else
        return algoNb ? FUNC2(dctx, dst, dstSize, cSrc,
                            cSrcSize, workSpace, wkspSize):
                        FUNC1(dctx, dst, dstSize, cSrc, cSrcSize, workSpace, wkspSize);
#endif
    }
}