
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {unsigned int volume; } ;
typedef TYPE_2__ aout_sys_t ;


 scalar_t__ SIO_MAXVOL ;
 int aout_MuteReport (TYPE_1__*,int) ;
 int aout_VolumeReport (TYPE_1__*,float) ;

__attribute__((used)) static void VolumeChanged (void *arg, unsigned volume)
{
    audio_output_t *aout = arg;
    aout_sys_t *p_sys = aout->sys;
    float fvol = (float)volume / (float)SIO_MAXVOL;

    aout_VolumeReport (aout, fvol);
    aout_MuteReport (aout, volume == 0);
    if (volume)
        p_sys->volume = volume;
}
