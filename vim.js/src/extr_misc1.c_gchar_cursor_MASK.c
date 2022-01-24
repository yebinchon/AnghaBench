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
 scalar_t__ has_mbyte ; 
 int FUNC0 (scalar_t__*) ; 
 scalar_t__* FUNC1 () ; 
 int FUNC2 (scalar_t__*) ; 

int
FUNC3()
{
#ifdef FEAT_MBYTE
    if (has_mbyte)
	return (*mb_ptr2char)(ml_get_cursor());
#endif
    return (int)*FUNC1();
}