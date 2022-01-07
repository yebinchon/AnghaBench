
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct command_t {scalar_t__ i_command; struct command_t* next; } ;
typedef int extensions_manager_t ;
struct TYPE_5__ {TYPE_1__* p_sys; int psz_title; } ;
typedef TYPE_2__ extension_t ;
struct TYPE_4__ {int command_lock; int timer; int * p_progress_id; struct command_t* command; int * p_mgr; } ;


 scalar_t__ CMD_DEACTIVATE ;
 int KillExtension (int *,TYPE_2__*) ;
 int VLC_TICK_FROM_MS (int) ;
 int VLC_TIMER_FIRE_ONCE ;
 int _ (char*) ;
 int * vlc_dialog_display_progress (int *,int,double,int ,int ,int ,int ) ;
 scalar_t__ vlc_dialog_is_cancelled (int *,int *) ;
 int vlc_dialog_release (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_timer_schedule (int ,int,int ,int ) ;

__attribute__((used)) static void WatchTimerCallback( void *data )
{
    extension_t *p_ext = data;
    extensions_manager_t *p_mgr = p_ext->p_sys->p_mgr;

    vlc_mutex_lock( &p_ext->p_sys->command_lock );

    for( struct command_t *cmd = p_ext->p_sys->command;
         cmd != ((void*)0);
         cmd = cmd->next )
        if( cmd->i_command == CMD_DEACTIVATE )
        {
            if( p_ext->p_sys->p_progress_id != ((void*)0) )
            {
                vlc_dialog_release( p_mgr, p_ext->p_sys->p_progress_id );
                p_ext->p_sys->p_progress_id = ((void*)0);
            }
            KillExtension( p_mgr, p_ext );
            vlc_mutex_unlock( &p_ext->p_sys->command_lock );
            return;
        }

    if( p_ext->p_sys->p_progress_id == ((void*)0) )
    {
        p_ext->p_sys->p_progress_id =
            vlc_dialog_display_progress( p_mgr, 1, 0.0,
                                         _( "Yes" ),
                                         _( "Extension not responding!" ),
                                         _( "Extension '%s' does not respond.\n"
                                         "Do you want to kill it now? " ),
                                         p_ext->psz_title );
        if( p_ext->p_sys->p_progress_id == ((void*)0) )
        {
            KillExtension( p_mgr, p_ext );
            vlc_mutex_unlock( &p_ext->p_sys->command_lock );
            return;
        }
        vlc_timer_schedule( p_ext->p_sys->timer, 0, VLC_TICK_FROM_MS(100),
                            VLC_TIMER_FIRE_ONCE );
    }
    else
    {
        if( vlc_dialog_is_cancelled( p_mgr, p_ext->p_sys->p_progress_id ) )
        {
            vlc_dialog_release( p_mgr, p_ext->p_sys->p_progress_id );
            p_ext->p_sys->p_progress_id = ((void*)0);
            KillExtension( p_mgr, p_ext );
            vlc_mutex_unlock( &p_ext->p_sys->command_lock );
            return;
        }
        vlc_timer_schedule( p_ext->p_sys->timer, 0, VLC_TICK_FROM_MS(100),
                            VLC_TIMER_FIRE_ONCE );
    }
    vlc_mutex_unlock( &p_ext->p_sys->command_lock );
}
