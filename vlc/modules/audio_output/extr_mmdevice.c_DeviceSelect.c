
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int lock; } ;
typedef TYPE_2__ aout_sys_t ;


 int DeviceSelectLocked (TYPE_1__*,char const*) ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;

__attribute__((used)) static int DeviceSelect(audio_output_t *aout, const char *id)
{
    aout_sys_t *sys = aout->sys;
    EnterCriticalSection(&sys->lock);
    int ret = DeviceSelectLocked(aout, id);
    LeaveCriticalSection(&sys->lock);
    return ret;
}
