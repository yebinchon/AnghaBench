
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int locked; int mutex; int dynamic; } ;
typedef TYPE_1__ vlc_mutex_t ;


 int EBUSY ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ TryEnterCriticalSection (int *) ;
 int super_mutex ;
 int vlc_mutex_mark (TYPE_1__*) ;

int vlc_mutex_trylock (vlc_mutex_t *p_mutex)
{
    int ret;

    if (!p_mutex->dynamic)
    {
        EnterCriticalSection(&super_mutex);
        if (!p_mutex->locked)
        {
            p_mutex->locked = 1;
            ret = 0;
        }
        else
            ret = EBUSY;
        LeaveCriticalSection(&super_mutex);
    }
    else
        ret = TryEnterCriticalSection (&p_mutex->mutex) ? 0 : EBUSY;

    if (ret == 0)
        vlc_mutex_mark(p_mutex);

    return ret;
}
