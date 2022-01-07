
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ extension_t ;
struct TYPE_4__ {int command_lock; int timer; int * p_progress_id; int p_mgr; } ;


 int VLC_TIMER_FIRE_ONCE ;
 int WATCH_TIMER_PERIOD ;
 int vlc_dialog_release (int ,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_timer_schedule (int ,int,int ,int ) ;
 TYPE_2__* vlclua_extension_get (int *) ;

int vlclua_extension_keep_alive( lua_State *L )
{
    extension_t *p_ext = vlclua_extension_get( L );

    vlc_mutex_lock( &p_ext->p_sys->command_lock );
    if( p_ext->p_sys->p_progress_id != ((void*)0) )
    {
        vlc_dialog_release( p_ext->p_sys->p_mgr, p_ext->p_sys->p_progress_id );
        p_ext->p_sys->p_progress_id = ((void*)0);
    }
    vlc_timer_schedule( p_ext->p_sys->timer, 0, WATCH_TIMER_PERIOD,
                        VLC_TIMER_FIRE_ONCE );
    vlc_mutex_unlock( &p_ext->p_sys->command_lock );

    return 1;
}
