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
typedef  int HUF_DTable ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  HUFD_ALLOC_TAG ; 
 int FUNC2 (int) ; 
 int HUF_TABLELOG_MAX ; 
 size_t FUNC3 (int*,void*,size_t,void const*,size_t) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 

size_t FUNC5 (void* dst, size_t dstSize, const void* cSrc, size_t cSrcSize)
{
    HUF_DTable* DTable = FUNC0(NonPagedPool, sizeof(HUF_DTable) * FUNC2(HUF_TABLELOG_MAX-1), HUFD_ALLOC_TAG);
    size_t ret;

    if (!DTable)
        return 0;

    FUNC4(DTable, sizeof(HUF_DTable) * FUNC2(HUF_TABLELOG_MAX-1));

    DTable[0] = (U32)(HUF_TABLELOG_MAX-1) * 0x01000001;

    ret = FUNC3 (DTable, dst, dstSize, cSrc, cSrcSize);

    FUNC1(DTable);

    return ret;
}