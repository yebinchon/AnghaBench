
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int * requested_device; } ;
typedef TYPE_2__ aout_sys_t ;


 int DeviceRequestLocked (TYPE_1__*) ;
 int * ToWide (char const*) ;
 int assert (int ) ;
 int * default_device ;
 int default_device_b ;
 scalar_t__ strcmp (char const*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int DeviceSelectLocked(audio_output_t *aout, const char *id)
{
    aout_sys_t *sys = aout->sys;
    assert(sys->requested_device == ((void*)0));

    if (id != ((void*)0) && strcmp(id, default_device_b) != 0)
    {
        sys->requested_device = ToWide(id);
        if (unlikely(sys->requested_device == ((void*)0)))
            return -1;
    }
    else
        sys->requested_device = default_device;

    return DeviceRequestLocked(aout);
}
