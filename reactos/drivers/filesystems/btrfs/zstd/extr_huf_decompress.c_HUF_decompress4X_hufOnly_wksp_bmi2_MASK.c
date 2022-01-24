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

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,void*,size_t,void const*,size_t,void*,size_t,int) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,void*,size_t,void const*,size_t,void*,size_t,int) ; 
 scalar_t__ FUNC3 (size_t,size_t) ; 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 

size_t FUNC4(HUF_DTable* dctx, void* dst, size_t dstSize, const void* cSrc, size_t cSrcSize, void* workSpace, size_t wkspSize, int bmi2)
{
    /* validation checks */
    if (dstSize == 0) return FUNC0(dstSize_tooSmall);
    if (cSrcSize == 0) return FUNC0(corruption_detected);

    {   U32 const algoNb = FUNC3(dstSize, cSrcSize);
        return algoNb ? FUNC2(dctx, dst, dstSize, cSrc, cSrcSize, workSpace, wkspSize, bmi2) :
                        FUNC1(dctx, dst, dstSize, cSrc, cSrcSize, workSpace, wkspSize, bmi2);
    }
}