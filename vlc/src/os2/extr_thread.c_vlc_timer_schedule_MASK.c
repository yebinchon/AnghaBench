#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vlc_timer_t ;
typedef  int vlc_tick_t ;
struct TYPE_3__ {scalar_t__ htimer; scalar_t__ hev; scalar_t__ interval; } ;
typedef  int /*<<< orphan*/  HSEM ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ NULLHANDLE ; 
 int VLC_TIMER_DISARM ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

void FUNC5 (vlc_timer_t timer, bool absolute,
                         vlc_tick_t value, vlc_tick_t interval)
{
    if (timer->htimer != NULLHANDLE)
    {
        FUNC1 (timer->htimer);
        timer->htimer = NULLHANDLE;
        timer->interval = 0;
    }

    if (value == VLC_TIMER_DISARM)
        return; /* Disarm */

    if (absolute)
        value -= FUNC4 ();
    value = (value + 999) / 1000;
    interval = (interval + 999) / 1000;

    timer->interval = FUNC2(interval);
    if (FUNC0 (FUNC2(value), (HSEM)timer->hev, &timer->htimer))
        FUNC3 ();
}