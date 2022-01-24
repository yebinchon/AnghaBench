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
typedef  scalar_t__ vlc_tick_t ;
typedef  int /*<<< orphan*/  pa_stream ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_6__ {int /*<<< orphan*/  mainloop; int /*<<< orphan*/  context; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_2__ aout_sys_t ;

/* Variables and functions */
 scalar_t__ VLC_TICK_INVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(audio_output_t *aout, vlc_tick_t *restrict delay)
{
    aout_sys_t *sys = aout->sys;
    pa_stream *s = sys->stream;
    int ret = -1;

    FUNC1(sys->mainloop);
    if (FUNC0(s) <= 0)
    {   /* latency is relevant only if not corked */
        vlc_tick_t delta = FUNC3(aout, sys->context, s);
        if (delta != VLC_TICK_INVALID)
        {
            *delay = delta;
            ret = 0;
        }
    }
    FUNC2(sys->mainloop);
    return ret;
}