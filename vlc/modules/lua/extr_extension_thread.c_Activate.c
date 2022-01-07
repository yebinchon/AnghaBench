
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct extension_sys_t {int b_activated; int b_thread_running; int b_exiting; int thread; int command_lock; int wait; TYPE_3__* command; } ;
struct command_t {int dummy; } ;
typedef int extensions_manager_t ;
struct TYPE_5__ {int psz_title; struct extension_sys_t* p_sys; } ;
typedef TYPE_1__ extension_t ;
struct TYPE_6__ {int i_command; } ;


 int CMD_ACTIVATE ;
 int Run ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_THREAD_PRIORITY_LOW ;
 int assert (int ) ;
 TYPE_3__* calloc (int,int) ;
 int msg_Dbg (int *,char*,int ) ;
 int vlc_clone (int *,int ,TYPE_1__*,int ) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int Activate( extensions_manager_t *p_mgr, extension_t *p_ext )
{
    assert( p_ext != ((void*)0) );

    struct extension_sys_t *p_sys = p_ext->p_sys;
    assert( p_sys != ((void*)0) );

    vlc_mutex_lock( &p_sys->command_lock );
    if ( p_sys->b_activated == 0 )
    {

        assert(p_sys->command == ((void*)0));
        p_sys->command = calloc( 1, sizeof( struct command_t ) );
        if( !p_sys->command )
        {
            vlc_mutex_unlock( &p_sys->command_lock );
            return VLC_ENOMEM;
        }
        p_sys->command->i_command = CMD_ACTIVATE;
        if (p_sys->b_thread_running == 1)
        {
            msg_Dbg( p_mgr, "Reactivating extension %s", p_ext->psz_title);
            vlc_cond_signal( &p_sys->wait );
        }
    }
    vlc_mutex_unlock( &p_sys->command_lock );

    if (p_sys->b_thread_running == 1)
        return VLC_SUCCESS;

    msg_Dbg( p_mgr, "Activating extension '%s'", p_ext->psz_title );

    p_sys->b_exiting = 0;
    p_sys->b_thread_running = 1;

    if( vlc_clone( &p_sys->thread, Run, p_ext, VLC_THREAD_PRIORITY_LOW )
        != VLC_SUCCESS )
    {
        p_sys->b_exiting = 1;
        p_sys->b_thread_running = 0;
        return VLC_ENOMEM;
    }

    return VLC_SUCCESS;
}
