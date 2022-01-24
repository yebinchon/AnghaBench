#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_4__ {int delay; int started; } ;
typedef  TYPE_2__ aout_sys_t ;

/* Variables and functions */

__attribute__((used)) static void FUNC0 (void *arg, int delta)
{
    audio_output_t *aout = arg;
    aout_sys_t *sys = aout->sys;

    sys->delay -= delta;
    sys->started = 1;
}