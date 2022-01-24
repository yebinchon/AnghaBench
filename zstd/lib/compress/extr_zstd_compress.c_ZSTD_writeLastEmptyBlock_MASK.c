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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int const) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 size_t ZSTD_blockHeaderSize ; 
 scalar_t__ bt_raw ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 

size_t FUNC2(void* dst, size_t dstCapacity)
{
    FUNC1(dstCapacity < ZSTD_blockHeaderSize, dstSize_tooSmall);
    {   U32 const cBlockHeader24 = 1 /*lastBlock*/ + (((U32)bt_raw)<<1);  /* 0 size */
        FUNC0(dst, cBlockHeader24);
        return ZSTD_blockHeaderSize;
    }
}