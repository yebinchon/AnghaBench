
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct aout_sys {scalar_t__ length; int first_play_date; } ;
struct TYPE_2__ {int * mute_set; int * volume_set; int stop; int flush; int pause; int play; int time_get; int start; struct aout_sys* sys; } ;
typedef TYPE_1__ audio_output_t ;


 int Flush ;
 int Pause ;
 int Play ;
 int Start ;
 int Stop ;
 int TimeGet ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_INVALID ;
 struct aout_sys* malloc (int) ;

__attribute__((used)) static int Open(vlc_object_t *obj)
{
    audio_output_t *aout = (audio_output_t *)obj;

    struct aout_sys *sys = aout->sys = malloc(sizeof(*sys));
    if (!sys)
        return VLC_ENOMEM;
    sys->first_play_date = VLC_TICK_INVALID;
    sys->length = 0;

    aout->start = Start;
    aout->time_get = TimeGet;
    aout->play = Play;
    aout->pause = Pause;
    aout->flush = Flush;
    aout->stop = Stop;
    aout->volume_set = ((void*)0);
    aout->mute_set = ((void*)0);
    return VLC_SUCCESS;
}
