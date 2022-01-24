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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 unsigned long long FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ unix_base_time_value ; 
 scalar_t__ unix_time_value ; 

void FUNC2()
{
    if (unix_base_time_value == 0)
        unix_base_time_value = ((uint64_t)FUNC1(NULL) - (FUNC0() / 1000ULL));

    unix_time_value = (FUNC0() / 1000ULL) + unix_base_time_value;
}