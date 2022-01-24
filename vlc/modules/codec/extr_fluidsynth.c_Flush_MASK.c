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
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_5__ {int /*<<< orphan*/  synth; int /*<<< orphan*/  end_date; } ;
typedef  TYPE_2__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 (decoder_t *p_dec)
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    FUNC0 (&p_sys->end_date, VLC_TICK_INVALID);
    //fluid_synth_system_reset (p_sys->synth);
    FUNC2 (p_sys->synth);
    for (unsigned channel = 0; channel < 16; channel++)
        for (unsigned note = 0; note < 128; note++)
            FUNC1 (p_sys->synth, channel, note);
}