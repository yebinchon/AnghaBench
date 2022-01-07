
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ vlc_inhibit_t ;
struct TYPE_5__ {unsigned int mask; int mutex; int cond; } ;
typedef TYPE_2__ vlc_inhibit_sys_t ;
typedef int EXECUTION_STATE ;


 int ES_CONTINUOUS ;
 int ES_DISPLAY_REQUIRED ;
 int ES_SYSTEM_REQUIRED ;
 int RestoreStateOnCancel ;
 int SetThreadExecutionState (int) ;
 unsigned int VLC_INHIBIT_DISPLAY ;
 int mutex_cleanup_push (int *) ;
 int vlc_assert_unreachable () ;
 int vlc_cleanup_pop () ;
 int vlc_cleanup_push (int ,TYPE_1__*) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void* Run(void* obj)
{
    vlc_inhibit_t *ih = (vlc_inhibit_t*)obj;
    vlc_inhibit_sys_t *sys = ih->p_sys;
    EXECUTION_STATE prev_state = ES_CONTINUOUS;

    for (unsigned int mask = 0;;)
    {
        vlc_mutex_lock(&sys->mutex);
        mutex_cleanup_push(&sys->mutex);
        vlc_cleanup_push(RestoreStateOnCancel, ih);
        while (mask == sys->mask)
            vlc_cond_wait(&sys->cond, &sys->mutex);
        mask = sys->mask;
        vlc_mutex_unlock(&sys->mutex);
        vlc_cleanup_pop();
        vlc_cleanup_pop();

        bool suspend = (mask & VLC_INHIBIT_DISPLAY) != 0;
        if (suspend)

            prev_state = SetThreadExecutionState( ES_DISPLAY_REQUIRED |
                                                  ES_SYSTEM_REQUIRED |
                                                  ES_CONTINUOUS );
        else
            SetThreadExecutionState( prev_state );
    }
    vlc_assert_unreachable();
}
