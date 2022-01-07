
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_8__ {int device_select; int stop; int start; TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_9__ {int fd; int device; } ;
typedef TYPE_2__ aout_sys_t ;


 int DeviceSelect ;
 int DevicesEnum (TYPE_1__*) ;
 int Start ;
 int Stop ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int aout_DeviceReport (TYPE_1__*,int ) ;
 int aout_SoftVolumeInit (TYPE_1__*) ;
 TYPE_2__* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int var_InheritString (TYPE_1__*,char*) ;

__attribute__((used)) static int Open (vlc_object_t *obj)
{
    audio_output_t *aout = (audio_output_t *)obj;

    aout_sys_t *sys = malloc (sizeof (*sys));
    if(unlikely( sys == ((void*)0) ))
        return VLC_ENOMEM;

    sys->fd = -1;
    sys->device = var_InheritString (aout, "oss-audio-device");

    aout->sys = sys;
    aout->start = Start;
    aout->stop = Stop;
    aout->device_select = DeviceSelect;
    aout_DeviceReport (aout, sys->device);
    aout_SoftVolumeInit (aout);

    DevicesEnum (aout);
    return VLC_SUCCESS;
}
