
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {float volume; int mute; } ;
typedef TYPE_2__ aout_sys_t ;


 scalar_t__ aout_GainRequest (TYPE_1__*,float) ;

__attribute__((used)) static int SoftVolumeSet (audio_output_t *aout, float vol)
{
    aout_sys_t *sys = aout->sys;

    vol = vol * vol * vol;
    if (!sys->mute && aout_GainRequest (aout, vol))
        return -1;
    sys->volume = vol;
    return 0;
}
