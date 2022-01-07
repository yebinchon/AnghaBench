
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int snd_pcm_t ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int * pcm; } ;
typedef TYPE_2__ aout_sys_t ;


 int PauseDummy (TYPE_1__*,int,int ) ;
 int snd_pcm_pause (int *,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void Pause (audio_output_t *aout, bool pause, vlc_tick_t date)
{
    aout_sys_t *p_sys = aout->sys;
    snd_pcm_t *pcm = p_sys->pcm;

    int val = snd_pcm_pause (pcm, pause);
    if (unlikely(val))
        PauseDummy (aout, pause, date);
}
