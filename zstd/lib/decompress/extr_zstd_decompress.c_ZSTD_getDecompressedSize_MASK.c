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

/* Variables and functions */
 unsigned long long const ZSTD_CONTENTSIZE_ERROR ; 
 unsigned long long const ZSTD_CONTENTSIZE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long long FUNC1 (void const*,size_t) ; 

unsigned long long FUNC2(const void* src, size_t srcSize)
{
    unsigned long long const ret = FUNC1(src, srcSize);
    FUNC0(ZSTD_CONTENTSIZE_ERROR < ZSTD_CONTENTSIZE_UNKNOWN);
    return (ret >= ZSTD_CONTENTSIZE_ERROR) ? 0 : ret;
}