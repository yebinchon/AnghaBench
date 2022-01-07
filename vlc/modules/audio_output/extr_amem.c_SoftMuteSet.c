
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

__attribute__((used)) static int SoftMuteSet (audio_output_t *aout, bool mute)
{
    aout_sys_t *sys = aout->sys;

    if (aout_GainRequest (aout, mute ? 0.f : sys->volume))
        return -1;
    sys->mute = mute;
    return 0;
}
