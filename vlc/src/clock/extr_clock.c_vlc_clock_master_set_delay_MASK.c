#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_4__ {scalar_t__ delay; TYPE_2__* owner; } ;
typedef  TYPE_1__ vlc_clock_t ;
struct TYPE_5__ {scalar_t__ delay; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; } ;
typedef  TYPE_2__ vlc_clock_main_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vlc_tick_t FUNC4(vlc_clock_t *clock, vlc_tick_t delay)
{
    vlc_clock_main_t *main_clock = clock->owner;
    FUNC2(&main_clock->lock);

    vlc_tick_t delta = delay - clock->delay;

    if (delta > 0)
    {
        /* The master clock is delayed */
        main_clock->delay = 0;
        clock->delay = delay;
    }
    else
    {
        /* Delay all slaves clock instead of advancing the master one */
        main_clock->delay = delta;
    }

    FUNC0(main_clock->delay <= 0);
    FUNC0(clock->delay >= 0);

    FUNC1(&main_clock->cond);
    FUNC3(&main_clock->lock);
    return delta;
}