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
 unsigned int* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*) ; 
 int /*<<< orphan*/  HUFC_ALLOC_TAG ; 
 int HUF_WORKSPACE_SIZE_U32 ; 
 size_t FUNC2 (void*,size_t,void const*,size_t,unsigned int,unsigned int,unsigned int*,int) ; 
 int /*<<< orphan*/  NonPagedPool ; 

size_t FUNC3 (void* dst, size_t dstSize,
                const void* src, size_t srcSize,
                unsigned maxSymbolValue, unsigned huffLog)
{
    unsigned* workSpace = FUNC0(NonPagedPool, sizeof(unsigned) * HUF_WORKSPACE_SIZE_U32, HUFC_ALLOC_TAG);
    size_t ret;

    if (!workSpace)
        return 0;

    ret = FUNC2(dst, dstSize, src, srcSize, maxSymbolValue, huffLog, workSpace, sizeof(unsigned) * HUF_WORKSPACE_SIZE_U32);

    FUNC1(workSpace);

    return ret;
}