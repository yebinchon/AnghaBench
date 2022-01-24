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
typedef  int /*<<< orphan*/  HUF_DTable ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (void*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (size_t const) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,void const*,size_t,void*,size_t) ; 
 int /*<<< orphan*/  srcSize_wrong ; 

size_t FUNC4(HUF_DTable* DCtx, void* dst, size_t dstSize,
                                   const void* cSrc, size_t cSrcSize,
                                   void* workSpace, size_t wkspSize)
{
    const BYTE* ip = (const BYTE*) cSrc;

    size_t const hSize = FUNC3(DCtx, cSrc, cSrcSize,
                                               workSpace, wkspSize);
    if (FUNC2(hSize)) return hSize;
    if (hSize >= cSrcSize) return FUNC0(srcSize_wrong);
    ip += hSize; cSrcSize -= hSize;

    return FUNC1(dst, dstSize, ip, cSrcSize, DCtx, /* bmi2 */ 0);
}