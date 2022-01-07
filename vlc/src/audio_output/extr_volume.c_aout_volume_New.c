
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int audio_replay_gain_t ;
struct TYPE_5__ {float output_factor; int replay_gain; int * module; } ;
typedef TYPE_1__ aout_volume_t ;


 int ReplayGainCallback ;
 int memcpy (int *,int const*,int) ;
 int memset (int *,int ,int) ;
 scalar_t__ unlikely (int ) ;
 int var_AddCallback (int *,char*,int ,TYPE_1__*) ;
 int var_TriggerCallback (int *,char*) ;
 TYPE_1__* vlc_custom_create (int *,int,char*) ;

aout_volume_t *aout_volume_New(vlc_object_t *parent,
                               const audio_replay_gain_t *gain)
{
    aout_volume_t *vol = vlc_custom_create(parent, sizeof (aout_volume_t),
                                           "volume");
    if (unlikely(vol == ((void*)0)))
        return ((void*)0);
    vol->module = ((void*)0);
    vol->output_factor = 1.f;




    if (gain != ((void*)0))
        memcpy(&vol->replay_gain, gain, sizeof (vol->replay_gain));
    else
        memset(&vol->replay_gain, 0, sizeof (vol->replay_gain));

    var_AddCallback(parent, "audio-replay-gain-mode",
                    ReplayGainCallback, vol);
    var_TriggerCallback(parent, "audio-replay-gain-mode");

    return vol;
}
