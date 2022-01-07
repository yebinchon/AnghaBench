
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_player_t ;
typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_6__ {int i_socket; int status_lock; struct TYPE_6__* psz_unix_path; int pi_socket_listen; int thread; int player_listener; int player_aout_listener; int playlist; } ;
typedef TYPE_2__ intf_sys_t ;


 int free (TYPE_2__*) ;
 int net_Close (int) ;
 int net_ListenClose (int ) ;
 int unlink (TYPE_2__*) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_RemoveListener (int *,int ) ;
 int vlc_player_Unlock (int *) ;
 int vlc_player_aout_RemoveListener (int *,int ) ;
 int * vlc_playlist_GetPlayer (int ) ;

__attribute__((used)) static void Deactivate( vlc_object_t *p_this )
{
    intf_thread_t *p_intf = (intf_thread_t*)p_this;
    intf_sys_t *p_sys = p_intf->p_sys;

    vlc_player_t *player = vlc_playlist_GetPlayer(p_sys->playlist);
    vlc_player_Lock(player);
    vlc_player_aout_RemoveListener(player, p_sys->player_aout_listener);
    vlc_player_RemoveListener(player, p_sys->player_listener);
    vlc_player_Unlock(player);

    vlc_cancel( p_sys->thread );
    vlc_join( p_sys->thread, ((void*)0) );

    net_ListenClose( p_sys->pi_socket_listen );
    if( p_sys->i_socket != -1 )
        net_Close( p_sys->i_socket );







    vlc_mutex_destroy( &p_sys->status_lock );
    free( p_sys );
}
