
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_8__ {float soft_gain; scalar_t__ soft_mute; } ;
typedef TYPE_2__ aout_sys_t ;


 scalar_t__ aout_GainRequest (TYPE_1__*,float) ;
 int aout_MuteReport (TYPE_1__*,int) ;
 int aout_VolumeReport (TYPE_1__*,float) ;

__attribute__((used)) static void aout_SoftVolumeStart (audio_output_t *aout)
{
    aout_sys_t *sys = aout->sys;

    if (aout_GainRequest(aout, sys->soft_mute ? 0.f : sys->soft_gain))
    {
        aout_MuteReport(aout, 0);
        aout_VolumeReport(aout, 1.f);
    }
}
