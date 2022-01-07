
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int locked; int mutex; int contention; int dynamic; } ;
typedef TYPE_1__ vlc_mutex_t ;


 int EnterCriticalSection (int *) ;
 int INFINITE ;
 int LeaveCriticalSection (int *) ;
 int SleepConditionVariableCS (int *,int *,int ) ;
 int super_mutex ;
 int super_variable ;
 int vlc_mutex_mark (TYPE_1__*) ;

void vlc_mutex_lock (vlc_mutex_t *p_mutex)
{
    if (!p_mutex->dynamic)
    {
        EnterCriticalSection(&super_mutex);
        while (p_mutex->locked)
        {
            p_mutex->contention++;
            SleepConditionVariableCS(&super_variable, &super_mutex, INFINITE);
            p_mutex->contention--;
        }
        p_mutex->locked = 1;
        LeaveCriticalSection(&super_mutex);
    }
    else
        EnterCriticalSection (&p_mutex->mutex);

    vlc_mutex_mark(p_mutex);
}
