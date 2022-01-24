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
typedef  int /*<<< orphan*/  pa_stream ;
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_5__ {scalar_t__ last_date; } ;
typedef  TYPE_2__ aout_sys_t ;

/* Variables and functions */
 scalar_t__ VLC_TICK_INVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(pa_stream *s, void *userdata)
{
    audio_output_t *aout = userdata;
    aout_sys_t *sys = aout->sys;

    /* This callback is _never_ called while paused. */
    if (sys->last_date == VLC_TICK_INVALID)
        return; /* nothing to do if buffers are (still) empty */
    if (FUNC0(s) > 0)
        FUNC1(s, aout, sys->last_date);
}