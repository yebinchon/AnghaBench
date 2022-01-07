
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int locked; int mutex; scalar_t__ contention; int dynamic; } ;
typedef TYPE_1__ vlc_mutex_t ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int WakeAllConditionVariable (int *) ;
 int assert (int) ;
 int super_mutex ;
 int super_variable ;
 int vlc_mutex_unmark (TYPE_1__*) ;

void vlc_mutex_unlock (vlc_mutex_t *p_mutex)
{
    if (!p_mutex->dynamic)
    {
        EnterCriticalSection(&super_mutex);
        assert (p_mutex->locked);
        p_mutex->locked = 0;
        if (p_mutex->contention)
            WakeAllConditionVariable(&super_variable);
        LeaveCriticalSection(&super_mutex);
    }
    else
        LeaveCriticalSection (&p_mutex->mutex);

    vlc_mutex_unmark(p_mutex);
}
