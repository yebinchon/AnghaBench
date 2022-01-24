#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_4__ {double delay; int /*<<< orphan*/ * owner; } ;
typedef  TYPE_1__ vlc_clock_t ;
typedef  int /*<<< orphan*/  vlc_clock_main_t ;

/* Variables and functions */
 scalar_t__ VLC_TICK_INVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__,scalar_t__,double) ; 

__attribute__((used)) static vlc_tick_t FUNC2(vlc_clock_t *clock,
                                                    vlc_tick_t now,
                                                    vlc_tick_t ts, double rate)
{
    vlc_clock_main_t *main_clock = clock->owner;
    vlc_tick_t system = FUNC0(main_clock, ts);
    if (system == VLC_TICK_INVALID)
    {
        /* We don't have a master sync point, let's fallback to a monotonic ref
         * point */
        system = FUNC1(clock, now, ts, rate);
    }

    return system + clock->delay * rate;
}