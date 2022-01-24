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
typedef  void* UTIL_time_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void* const,void*) ; 
 void* FUNC1 () ; 

void FUNC2(void)
{
    UTIL_time_t const clockStart = FUNC1();
    UTIL_time_t clockEnd;
    do {
        clockEnd = FUNC1();
    } while (FUNC0(clockStart, clockEnd) == 0);
}