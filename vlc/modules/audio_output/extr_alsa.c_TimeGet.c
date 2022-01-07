
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int snd_pcm_sframes_t ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int rate; int pcm; } ;
typedef TYPE_2__ aout_sys_t ;


 int msg_Err (TYPE_1__*,char*,int ) ;
 int snd_pcm_delay (int ,int *) ;
 int snd_strerror (int) ;
 int vlc_tick_from_samples (int ,int ) ;

__attribute__((used)) static int TimeGet (audio_output_t *aout, vlc_tick_t *restrict delay)
{
    aout_sys_t *sys = aout->sys;
    snd_pcm_sframes_t frames;

    int val = snd_pcm_delay (sys->pcm, &frames);
    if (val)
    {
        msg_Err (aout, "cannot estimate delay: %s", snd_strerror (val));
        return -1;
    }
    *delay = vlc_tick_from_samples(frames, sys->rate);
    return 0;
}
