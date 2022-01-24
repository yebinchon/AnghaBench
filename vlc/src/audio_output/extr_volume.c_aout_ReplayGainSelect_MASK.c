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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_3__ {float* pf_gain; float* pf_peak; scalar_t__* pb_peak; scalar_t__* pb_gain; } ;
typedef  TYPE_1__ audio_replay_gain_t ;

/* Variables and functions */
 unsigned int AUDIO_REPLAY_GAIN_ALBUM ; 
 unsigned int AUDIO_REPLAY_GAIN_MAX ; 
 unsigned int AUDIO_REPLAY_GAIN_TRACK ; 
 float FUNC0 (float,float) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 float FUNC2 (float,float) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 float FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static float FUNC6(vlc_object_t *obj, const char *str,
                                   const audio_replay_gain_t *replay_gain)
{
    unsigned mode = AUDIO_REPLAY_GAIN_MAX;

    if (FUNC1(str != NULL))
    {   /* Find selectrf mode */
        if (!FUNC3 (str, "track"))
            mode = AUDIO_REPLAY_GAIN_TRACK;
        else
        if (!FUNC3 (str, "album"))
            mode = AUDIO_REPLAY_GAIN_ALBUM;
    }

    /* */
    float multiplier;

    if (mode == AUDIO_REPLAY_GAIN_MAX)
    {
        multiplier = 1.f;
    }
    else
    {
        float gain;

        /* If the selectrf mode is not available, prefer the other one */
        if (!replay_gain->pb_gain[mode] && replay_gain->pb_gain[!mode])
            mode = !mode;

        if (replay_gain->pb_gain[mode])
            gain = replay_gain->pf_gain[mode]
                 + FUNC5 (obj, "audio-replay-gain-preamp");
        else
            gain = FUNC5 (obj, "audio-replay-gain-default");

        multiplier = FUNC2 (10.f, gain / 20.f);

        if (FUNC4 (obj, "audio-replay-gain-peak-protection"))
            multiplier = FUNC0 (multiplier, replay_gain->pb_peak[mode]
                                            ? 1.f / replay_gain->pf_peak[mode]
                                            : 1.f);
    }

    /* Command line / configuration gain */
    multiplier *= FUNC5 (obj, "gain");

    return multiplier;
}