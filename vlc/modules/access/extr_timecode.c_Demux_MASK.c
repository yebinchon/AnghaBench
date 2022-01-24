#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_6__ {scalar_t__ next_time; int /*<<< orphan*/  date; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ VLC_TICK_INVALID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2 (demux_t *demux)
{
    demux_sys_t *sys = demux->p_sys;

    if (sys->next_time == VLC_TICK_INVALID) /* Master mode */
        return FUNC0 (demux, true);

    /* Slave mode */
    while (sys->next_time > FUNC1 (&sys->date))
    {
        int val = FUNC0 (demux, false);
        if (val <= 0)
            return val;
    }
    return 1;
}