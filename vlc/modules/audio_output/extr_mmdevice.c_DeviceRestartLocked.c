
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int * acquired_device; int * requested_device; } ;
typedef TYPE_2__ aout_sys_t ;


 int DeviceRequestLocked (TYPE_1__*) ;
 int assert (int ) ;
 int * default_device ;

__attribute__((used)) static int DeviceRestartLocked(audio_output_t *aout)
{
    aout_sys_t *sys = aout->sys;
    assert(sys->requested_device == ((void*)0));
    sys->requested_device = sys->acquired_device ? sys->acquired_device
                                                 : default_device;
    return DeviceRequestLocked(aout);
}
