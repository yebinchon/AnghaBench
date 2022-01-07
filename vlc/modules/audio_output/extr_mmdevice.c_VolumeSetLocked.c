
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {float gain; float requested_volume; } ;
typedef TYPE_2__ aout_sys_t ;


 int aout_GainRequest (TYPE_1__*,float) ;

__attribute__((used)) static int VolumeSetLocked(audio_output_t *aout, float vol)
{
    aout_sys_t *sys = aout->sys;
    float gain = 1.f;

    vol = vol * vol * vol;

    if (vol > 1.f)
    {
        gain = vol;
        vol = 1.f;
    }

    aout_GainRequest(aout, gain);

    sys->gain = gain;
    sys->requested_volume = vol;
    return 0;
}
