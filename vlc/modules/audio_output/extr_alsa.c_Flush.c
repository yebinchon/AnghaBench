
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int snd_pcm_t ;
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int * pcm; } ;
typedef TYPE_2__ aout_sys_t ;


 int snd_pcm_drop (int *) ;
 int snd_pcm_prepare (int *) ;

__attribute__((used)) static void Flush (audio_output_t *aout)
{
    aout_sys_t *p_sys = aout->sys;
    snd_pcm_t *pcm = p_sys->pcm;
    snd_pcm_drop (pcm);
    snd_pcm_prepare (pcm);
}
