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
typedef  int /*<<< orphan*/  ZSTD_compressionParameters ;

/* Variables and functions */
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long long,size_t) ; 

ZSTD_compressionParameters FUNC1(int compressionLevel, unsigned long long srcSizeHint, size_t dictSize)
{
    if (srcSizeHint == 0) srcSizeHint = ZSTD_CONTENTSIZE_UNKNOWN;
    return FUNC0(compressionLevel, srcSizeHint, dictSize);
}