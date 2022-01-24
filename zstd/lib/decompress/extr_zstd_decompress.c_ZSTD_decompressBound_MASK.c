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
struct TYPE_3__ {size_t compressedSize; unsigned long long decompressedBound; } ;
typedef  TYPE_1__ ZSTD_frameSizeInfo ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 unsigned long long const ZSTD_CONTENTSIZE_ERROR ; 
 TYPE_1__ FUNC0 (void const*,size_t) ; 
 scalar_t__ FUNC1 (size_t const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

unsigned long long FUNC3(const void* src, size_t srcSize)
{
    unsigned long long bound = 0;
    /* Iterate over each frame */
    while (srcSize > 0) {
        ZSTD_frameSizeInfo const frameSizeInfo = FUNC0(src, srcSize);
        size_t const compressedSize = frameSizeInfo.compressedSize;
        unsigned long long const decompressedBound = frameSizeInfo.decompressedBound;
        if (FUNC1(compressedSize) || decompressedBound == ZSTD_CONTENTSIZE_ERROR)
            return ZSTD_CONTENTSIZE_ERROR;
        FUNC2(srcSize >= compressedSize);
        src = (const BYTE*)src + compressedSize;
        srcSize -= compressedSize;
        bound += decompressedBound;
    }
    return bound;
}