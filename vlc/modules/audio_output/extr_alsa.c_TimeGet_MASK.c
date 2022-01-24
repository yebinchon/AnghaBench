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
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  snd_pcm_sframes_t ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_6__ {int /*<<< orphan*/  rate; int /*<<< orphan*/  pcm; } ;
typedef  TYPE_2__ aout_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (audio_output_t *aout, vlc_tick_t *restrict delay)
{
    aout_sys_t *sys = aout->sys;
    snd_pcm_sframes_t frames;

    int val = FUNC1 (sys->pcm, &frames);
    if (val)
    {
        FUNC0 (aout, "cannot estimate delay: %s", FUNC2 (val));
        return -1;
    }
    *delay = FUNC3(frames, sys->rate);
    return 0;
}