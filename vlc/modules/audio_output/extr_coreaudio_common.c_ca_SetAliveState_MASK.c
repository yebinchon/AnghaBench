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
struct aout_sys_common {int b_paused; int b_do_flush; int b_played; int /*<<< orphan*/  flush_sem; } ;
struct TYPE_4__ {scalar_t__ sys; } ;
typedef  TYPE_1__ audio_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct aout_sys_common*) ; 
 int /*<<< orphan*/  FUNC2 (struct aout_sys_common*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(audio_output_t *p_aout, bool alive)
{
    struct aout_sys_common *p_sys = (struct aout_sys_common *) p_aout->sys;

    FUNC1(p_sys);

    bool b_sem_post = false;
    p_sys->b_paused = !alive;
    if (!alive && p_sys->b_do_flush)
    {
        FUNC0(p_aout);
        p_sys->b_played = false;
        p_sys->b_do_flush = false;
        b_sem_post = true;
    }

    FUNC2(p_sys);

    if (b_sem_post)
        FUNC3(&p_sys->flush_sem);
}