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
typedef  int /*<<< orphan*/  ZSTDv06_DCtx ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t ZSTDv06_BLOCKSIZE_MAX ; 
 size_t FUNC1 (int /*<<< orphan*/ *,void const*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC3 (size_t const) ; 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC4(ZSTDv06_DCtx* dctx,
                            void* dst, size_t dstCapacity,
                      const void* src, size_t srcSize)
{   /* blockType == blockCompressed */
    const BYTE* ip = (const BYTE*)src;

    if (srcSize >= ZSTDv06_BLOCKSIZE_MAX) return FUNC0(srcSize_wrong);

    /* Decode literals sub-block */
    {   size_t const litCSize = FUNC1(dctx, src, srcSize);
        if (FUNC3(litCSize)) return litCSize;
        ip += litCSize;
        srcSize -= litCSize;
    }
    return FUNC2(dctx, dst, dstCapacity, ip, srcSize);
}