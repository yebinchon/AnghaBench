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
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct aout_sys_common {int b_paused; } ;
struct TYPE_3__ {scalar_t__ sys; } ;
typedef  TYPE_1__ audio_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aout_sys_common*) ; 
 int /*<<< orphan*/  FUNC2 (struct aout_sys_common*) ; 

void
FUNC3(audio_output_t * p_aout, bool pause, vlc_tick_t date)
{
    struct aout_sys_common *p_sys = (struct aout_sys_common *) p_aout->sys;
    FUNC0(date);

    FUNC1(p_sys);
    p_sys->b_paused = pause;
    FUNC2(p_sys);
}