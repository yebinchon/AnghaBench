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
typedef  scalar_t__ vlc_tick_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

void FUNC4 (vlc_tick_t deadline)
{
    vlc_tick_t delay;

    FUNC2();
    while ((delay = (deadline - FUNC3())) > 0)
    {
        delay /= 1000;
        if (FUNC0(delay > 0x7fffffff))
            delay = 0x7fffffff;
        FUNC1 (delay);
        FUNC2();
    }
}