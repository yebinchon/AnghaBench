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
struct aout_sys {scalar_t__ first_play_date; scalar_t__ length; } ;
struct TYPE_4__ {struct aout_sys* sys; } ;
typedef  TYPE_1__ audio_output_t ;

/* Variables and functions */
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static int FUNC5(audio_output_t *aout, vlc_tick_t *restrict delay)
{
    struct aout_sys *sys = aout->sys;

    if (FUNC3(sys->first_play_date == VLC_TICK_INVALID))
    {
        *delay = 0;
        return 0;
    }

    vlc_tick_t time_since_first_play = FUNC4() - sys->first_play_date;
    FUNC0(time_since_first_play >= 0);

    if (FUNC1(sys->length > time_since_first_play))
    {
        *delay = sys->length - time_since_first_play;
        return 0;
    }

    FUNC2(aout, "underflow");
    return -1;
}