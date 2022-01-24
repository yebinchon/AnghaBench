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
struct aout_sys_common {scalar_t__ i_render_host_time; scalar_t__ i_first_render_host_time; } ;
struct TYPE_4__ {scalar_t__ sys; } ;
typedef  TYPE_1__ audio_output_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ const FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct aout_sys_common*) ; 
 int /*<<< orphan*/  FUNC3 (struct aout_sys_common*) ; 
 scalar_t__ const FUNC4 () ; 

int
FUNC5(audio_output_t *p_aout, vlc_tick_t *delay)
{
    struct aout_sys_common *p_sys = (struct aout_sys_common *) p_aout->sys;

    FUNC2(p_sys);

    if (p_sys->i_render_host_time == 0 || p_sys->i_first_render_host_time == 0)
    {
        /* Not yet started (or reached the first_render host time) */
        FUNC3(p_sys);
        return -1;
    }

    const vlc_tick_t i_render_time_us = FUNC0(p_sys->i_render_host_time);
    const vlc_tick_t i_render_delay = i_render_time_us - FUNC4();

    *delay = FUNC1(p_aout) + i_render_delay;
    FUNC3(p_sys);
    return 0;
}