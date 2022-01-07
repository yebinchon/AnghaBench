
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int request_device_restart; int * dev; int * stream; int lock; int ready; int * requested_device; int work; } ;
typedef TYPE_2__ aout_sys_t ;


 int AOUT_RESTART_OUTPUT ;
 int INFINITE ;
 int SleepConditionVariableCS (int *,int *,int ) ;
 int WakeConditionVariable (int *) ;
 int aout_RestartRequest (TYPE_1__*,int ) ;
 int assert (int *) ;

__attribute__((used)) static int DeviceRequestLocked(audio_output_t *aout)
{
    aout_sys_t *sys = aout->sys;
    assert(sys->requested_device);

    sys->request_device_restart = 0;

    WakeConditionVariable(&sys->work);
    while (sys->requested_device != ((void*)0))
        SleepConditionVariableCS(&sys->ready, &sys->lock, INFINITE);

    if (sys->stream != ((void*)0) && sys->dev != ((void*)0))

        aout_RestartRequest(aout, AOUT_RESTART_OUTPUT);
    return (sys->dev != ((void*)0)) ? 0 : -1;
}
