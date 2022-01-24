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
struct TYPE_3__ {size_t const windowLog; int searchLength; } ;
typedef  TYPE_1__ ZSTD_compressionParameters ;
typedef  scalar_t__ ZSTD_buffered_policy_e ;
typedef  size_t const U64 ;
typedef  int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 size_t FUNC1 (int,size_t) ; 
 size_t FUNC2 (size_t const,size_t const) ; 
 size_t const ZSTD_BLOCKSIZE_MAX ; 
 scalar_t__ ZSTDb_buffered ; 

__attribute__((used)) static U32 FUNC3(size_t bufferSize1, size_t maxNbSeq1,
                            size_t maxNbLit1,
                            ZSTD_buffered_policy_e buffPol2,
                            ZSTD_compressionParameters cParams2,
                            U64 pledgedSrcSize)
{
    size_t const windowSize2 = FUNC1(1, (size_t)FUNC2(((U64)1 << cParams2.windowLog), pledgedSrcSize));
    size_t const blockSize2 = FUNC2(ZSTD_BLOCKSIZE_MAX, windowSize2);
    size_t const maxNbSeq2 = blockSize2 / ((cParams2.searchLength == 3) ? 3 : 4);
    size_t const maxNbLit2 = blockSize2;
    size_t const neededBufferSize2 = (buffPol2==ZSTDb_buffered) ? windowSize2 + blockSize2 : 0;
    FUNC0(4, "ZSTD_sufficientBuff: is neededBufferSize2=%u <= bufferSize1=%u",
                (U32)neededBufferSize2, (U32)bufferSize1);
    FUNC0(4, "ZSTD_sufficientBuff: is maxNbSeq2=%u <= maxNbSeq1=%u",
                (U32)maxNbSeq2, (U32)maxNbSeq1);
    FUNC0(4, "ZSTD_sufficientBuff: is maxNbLit2=%u <= maxNbLit1=%u",
                (U32)maxNbLit2, (U32)maxNbLit1);
    return (maxNbLit2 <= maxNbLit1)
         & (maxNbSeq2 <= maxNbSeq1)
         & (neededBufferSize2 <= bufferSize1);
}