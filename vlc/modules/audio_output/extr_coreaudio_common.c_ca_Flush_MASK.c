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
struct aout_sys_common {int b_do_flush; int b_played; scalar_t__ i_render_frames; scalar_t__ i_first_render_host_time; scalar_t__ i_render_host_time; int /*<<< orphan*/  flush_sem; scalar_t__ b_paused; } ;
struct TYPE_4__ {scalar_t__ sys; } ;
typedef  TYPE_1__ audio_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct aout_sys_common*) ; 
 int /*<<< orphan*/  FUNC3 (struct aout_sys_common*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(audio_output_t *p_aout)
{
    struct aout_sys_common *p_sys = (struct aout_sys_common *) p_aout->sys;

    FUNC2(p_sys);

    FUNC0(!p_sys->b_do_flush);
    if (p_sys->b_paused)
        FUNC1(p_aout);
    else
    {
        p_sys->b_do_flush = true;
        FUNC3(p_sys);
        FUNC4(&p_sys->flush_sem);
        FUNC2(p_sys);
    }

    p_sys->i_render_host_time = p_sys->i_first_render_host_time = 0;
    p_sys->i_render_frames = 0;
    FUNC3(p_sys);

    p_sys->b_played = false;
}