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
 int HIST_WKSP_SIZE_U32 ; 
 size_t FUNC0 (unsigned int*,unsigned int*,void const*,size_t,unsigned int*) ; 

size_t FUNC1(unsigned* count, unsigned* maxSymbolValuePtr,
                 const void* src, size_t srcSize)
{
    unsigned tmpCounters[HIST_WKSP_SIZE_U32];
    return FUNC0(count, maxSymbolValuePtr, src, srcSize, tmpCounters);
}