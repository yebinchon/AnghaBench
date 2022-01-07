
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int lock; int work; } ;
typedef TYPE_2__ aout_sys_t ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int VolumeSetLocked (TYPE_1__*,float) ;
 int WakeConditionVariable (int *) ;

__attribute__((used)) static int VolumeSet(audio_output_t *aout, float vol)
{
    aout_sys_t *sys = aout->sys;

    EnterCriticalSection(&sys->lock);
    int ret = VolumeSetLocked(aout, vol);
    WakeConditionVariable(&sys->work);
    LeaveCriticalSection(&sys->lock);
    return ret;
}
