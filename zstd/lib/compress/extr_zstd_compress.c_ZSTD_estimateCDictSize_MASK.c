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
 int /*<<< orphan*/  ZSTD_CONTENTSIZE_UNKNOWN ; 
 int /*<<< orphan*/  ZSTD_dlm_byCopy ; 
 size_t FUNC0 (size_t,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,size_t) ; 

size_t FUNC2(size_t dictSize, int compressionLevel)
{
    ZSTD_compressionParameters const cParams = FUNC1(compressionLevel, ZSTD_CONTENTSIZE_UNKNOWN, dictSize);
    return FUNC0(dictSize, cParams, ZSTD_dlm_byCopy);
}