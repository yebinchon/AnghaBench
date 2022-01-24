#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ULONG ;
struct TYPE_5__ {size_t ulAddress; scalar_t__ bUsed; scalar_t__ bVirtual; } ;
typedef  TYPE_1__* PSW_BP ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 TYPE_1__* aSwBreakpoints ; 

PSW_BP FUNC1(ULONG ulAddress)
{
    ULONG i;

    for(i=0;i<FUNC0(aSwBreakpoints);i++)
    {
        if(aSwBreakpoints[i].ulAddress == ulAddress && aSwBreakpoints[i].bUsed==TRUE && aSwBreakpoints[i].bVirtual==FALSE)
            return &aSwBreakpoints[i];
    }

    return NULL;
}