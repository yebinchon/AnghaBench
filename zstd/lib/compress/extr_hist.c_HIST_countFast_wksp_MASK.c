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
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 size_t HIST_WKSP_SIZE ; 
 size_t FUNC1 (unsigned int*,unsigned int*,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (unsigned int*,unsigned int*,void const*,size_t) ; 
 int /*<<< orphan*/  trustInput ; 
 int /*<<< orphan*/  workSpace_tooSmall ; 

size_t FUNC3(unsigned* count, unsigned* maxSymbolValuePtr,
                          const void* source, size_t sourceSize,
                          void* workSpace, size_t workSpaceSize)
{
    if (sourceSize < 1500) /* heuristic threshold */
        return FUNC2(count, maxSymbolValuePtr, source, sourceSize);
    if ((size_t)workSpace & 3) return FUNC0(GENERIC);  /* must be aligned on 4-bytes boundaries */
    if (workSpaceSize < HIST_WKSP_SIZE) return FUNC0(workSpace_tooSmall);
    return FUNC1(count, maxSymbolValuePtr, source, sourceSize, trustInput, (U32*)workSpace);
}