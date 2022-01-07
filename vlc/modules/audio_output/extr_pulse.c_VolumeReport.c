
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ pa_volume_t ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int cvolume; } ;
typedef TYPE_2__ aout_sys_t ;


 float PA_VOLUME_NORM ;
 int aout_VolumeReport (TYPE_1__*,float) ;
 scalar_t__ pa_cvolume_max (int *) ;

__attribute__((used)) static void VolumeReport(audio_output_t *aout)
{
    aout_sys_t *sys = aout->sys;
    pa_volume_t volume = pa_cvolume_max(&sys->cvolume);

    aout_VolumeReport(aout, (float)volume / PA_VOLUME_NORM);
}
