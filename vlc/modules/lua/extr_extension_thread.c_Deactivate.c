
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int extensions_manager_t ;
struct TYPE_7__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ extension_t ;
struct TYPE_6__ {int command_lock; int * p_progress_id; scalar_t__ b_exiting; } ;


 int KillExtension (int *,TYPE_2__*) ;
 int QueueDeactivateCommand (TYPE_2__*) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int vlc_dialog_release (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int Deactivate( extensions_manager_t *p_mgr, extension_t *p_ext )
{
    vlc_mutex_lock( &p_ext->p_sys->command_lock );

    if( p_ext->p_sys->b_exiting )
    {
        vlc_mutex_unlock( &p_ext->p_sys->command_lock );
        return VLC_EGENERIC;
    }

    if( p_ext->p_sys->p_progress_id != ((void*)0) )
    {

        vlc_dialog_release( p_mgr, p_ext->p_sys->p_progress_id );
        p_ext->p_sys->p_progress_id = ((void*)0);
        KillExtension( p_mgr, p_ext );
        vlc_mutex_unlock( &p_ext->p_sys->command_lock );
        return VLC_SUCCESS;
    }

    bool b_success = QueueDeactivateCommand( p_ext );
    vlc_mutex_unlock( &p_ext->p_sys->command_lock );

    return b_success ? VLC_SUCCESS : VLC_ENOMEM;
}
