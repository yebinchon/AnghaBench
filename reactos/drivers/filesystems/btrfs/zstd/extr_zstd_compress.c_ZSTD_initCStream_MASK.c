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
typedef  int /*<<< orphan*/  ZSTD_CStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  ZSTD_CONTENTSIZE_UNKNOWN ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

size_t FUNC2(ZSTD_CStream* zcs, int compressionLevel)
{
    FUNC0(4, "ZSTD_initCStream");
    return FUNC1(zcs, compressionLevel, ZSTD_CONTENTSIZE_UNKNOWN);
}