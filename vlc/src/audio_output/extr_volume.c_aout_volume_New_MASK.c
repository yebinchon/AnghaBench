#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  audio_replay_gain_t ;
struct TYPE_5__ {float output_factor; int /*<<< orphan*/  replay_gain; int /*<<< orphan*/ * module; } ;
typedef  TYPE_1__ aout_volume_t ;

/* Variables and functions */
 int /*<<< orphan*/  ReplayGainCallback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int,char*) ; 

aout_volume_t *FUNC6(vlc_object_t *parent,
                               const audio_replay_gain_t *gain)
{
    aout_volume_t *vol = FUNC5(parent, sizeof (aout_volume_t),
                                           "volume");
    if (FUNC2(vol == NULL))
        return NULL;
    vol->module = NULL;
    vol->output_factor = 1.f;

    //audio_volume_t *obj = &vol->object;

    /* Gain */
    if (gain != NULL)
        FUNC0(&vol->replay_gain, gain, sizeof (vol->replay_gain));
    else
        FUNC1(&vol->replay_gain, 0, sizeof (vol->replay_gain));

    FUNC3(parent, "audio-replay-gain-mode",
                    ReplayGainCallback, vol);
    FUNC4(parent, "audio-replay-gain-mode");

    return vol;
}