
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int lock; int thread; int work; int * it; int requested_device; } ;
typedef TYPE_2__ aout_sys_t ;


 int DeleteCriticalSection (int *) ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int WakeConditionVariable (int *) ;
 int default_device ;
 int free (TYPE_2__*) ;
 int vlc_join (int ,int *) ;

__attribute__((used)) static void Close(vlc_object_t *obj)
{
    audio_output_t *aout = (audio_output_t *)obj;
    aout_sys_t *sys = aout->sys;

    EnterCriticalSection(&sys->lock);
    sys->requested_device = default_device;
    sys->it = ((void*)0);
    WakeConditionVariable(&sys->work);
    LeaveCriticalSection(&sys->lock);

    vlc_join(sys->thread, ((void*)0));
    DeleteCriticalSection(&sys->lock);

    free(sys);
}
