#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct TYPE_7__ {TYPE_3__* sys; } ;
typedef  TYPE_2__ audio_output_t ;
struct TYPE_6__ {int i_frame_length; int i_rate; int i_bytes_per_frame; } ;
struct TYPE_8__ {TYPE_1__ format; int /*<<< orphan*/  fd; } ;
typedef  TYPE_3__ aout_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  SNDCTL_DSP_GETODELAY ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4 (audio_output_t *aout, vlc_tick_t *restrict pts)
{
    aout_sys_t *sys = aout->sys;
    int delay;

    if (FUNC0 (sys->fd, SNDCTL_DSP_GETODELAY, &delay) < 0)
    {
        FUNC1 (aout, "cannot get delay: %s", FUNC2(errno));
        return -1;
    }

    *pts = FUNC3(delay * sys->format.i_frame_length,
                        sys->format.i_rate * sys->format.i_bytes_per_frame);
    return 0;
}