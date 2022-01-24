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

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,void*,size_t,void const*,size_t,void*,size_t,int /*<<< orphan*/ ) ; 

size_t FUNC1(HUF_DTable* dctx, void* dst, size_t dstSize,
                                   const void* cSrc, size_t cSrcSize,
                                   void* workSpace, size_t wkspSize)
{
    return FUNC0(dctx, dst, dstSize, cSrc, cSrcSize, workSpace, wkspSize, /* bmi2 */ 0);
}