
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_7__ {int device_events; int lock; int work; int * requested_device; int * it; } ;
typedef TYPE_2__ aout_sys_t ;
typedef int IMMDeviceEnumerator ;
typedef int HRESULT ;


 int DevicesEnum (int *,int ,TYPE_1__*) ;
 int EnterCriticalSection (int *) ;
 int EnterMTA () ;
 scalar_t__ FAILED (int ) ;
 int IMMDeviceEnumerator_RegisterEndpointNotificationCallback (int *,int *) ;
 int IMMDeviceEnumerator_Release (int *) ;
 int IMMDeviceEnumerator_UnregisterEndpointNotificationCallback (int *,int *) ;
 int INFINITE ;
 int LeaveCriticalSection (int *) ;
 int LeaveMTA () ;
 int MMSession (TYPE_1__*,int *) ;
 int MMThread_DevicesEnum_Added ;
 int SleepConditionVariableCS (int *,int *,int ) ;
 int msg_Warn (TYPE_1__*,char*,int ) ;

__attribute__((used)) static void *MMThread(void *data)
{
    audio_output_t *aout = data;
    aout_sys_t *sys = aout->sys;
    IMMDeviceEnumerator *it = sys->it;

    EnterMTA();
    IMMDeviceEnumerator_RegisterEndpointNotificationCallback(it,
                                                          &sys->device_events);
    HRESULT hr = DevicesEnum(it, MMThread_DevicesEnum_Added, aout);
    if (FAILED(hr))
        msg_Warn(aout, "cannot enumerate audio endpoints (error 0x%lX)", hr);

    EnterCriticalSection(&sys->lock);

    do
        if (sys->requested_device == ((void*)0) || FAILED(MMSession(aout, it)))
            SleepConditionVariableCS(&sys->work, &sys->lock, INFINITE);
    while (sys->it != ((void*)0));

    LeaveCriticalSection(&sys->lock);

    IMMDeviceEnumerator_UnregisterEndpointNotificationCallback(it,
                                                          &sys->device_events);
    IMMDeviceEnumerator_Release(it);
    LeaveMTA();
    return ((void*)0);
}
