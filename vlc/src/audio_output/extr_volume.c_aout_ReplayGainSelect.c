
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {float* pf_gain; float* pf_peak; scalar_t__* pb_peak; scalar_t__* pb_gain; } ;
typedef TYPE_1__ audio_replay_gain_t ;


 unsigned int AUDIO_REPLAY_GAIN_ALBUM ;
 unsigned int AUDIO_REPLAY_GAIN_MAX ;
 unsigned int AUDIO_REPLAY_GAIN_TRACK ;
 float fminf (float,float) ;
 scalar_t__ likely (int ) ;
 float powf (float,float) ;
 int strcmp (char const*,char*) ;
 scalar_t__ var_InheritBool (int *,char*) ;
 float var_InheritFloat (int *,char*) ;

__attribute__((used)) static float aout_ReplayGainSelect(vlc_object_t *obj, const char *str,
                                   const audio_replay_gain_t *replay_gain)
{
    unsigned mode = AUDIO_REPLAY_GAIN_MAX;

    if (likely(str != ((void*)0)))
    {
        if (!strcmp (str, "track"))
            mode = AUDIO_REPLAY_GAIN_TRACK;
        else
        if (!strcmp (str, "album"))
            mode = AUDIO_REPLAY_GAIN_ALBUM;
    }


    float multiplier;

    if (mode == AUDIO_REPLAY_GAIN_MAX)
    {
        multiplier = 1.f;
    }
    else
    {
        float gain;


        if (!replay_gain->pb_gain[mode] && replay_gain->pb_gain[!mode])
            mode = !mode;

        if (replay_gain->pb_gain[mode])
            gain = replay_gain->pf_gain[mode]
                 + var_InheritFloat (obj, "audio-replay-gain-preamp");
        else
            gain = var_InheritFloat (obj, "audio-replay-gain-default");

        multiplier = powf (10.f, gain / 20.f);

        if (var_InheritBool (obj, "audio-replay-gain-peak-protection"))
            multiplier = fminf (multiplier, replay_gain->pb_peak[mode]
                                            ? 1.f / replay_gain->pf_peak[mode]
                                            : 1.f);
    }


    multiplier *= var_InheritFloat (obj, "gain");

    return multiplier;
}
