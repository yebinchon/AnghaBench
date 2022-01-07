
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_player_t ;
typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_5__ {int lock; scalar_t__ notification; int player_listener; int playlist; } ;
typedef TYPE_2__ intf_sys_t ;
typedef int GError ;


 int free (TYPE_2__*) ;
 int g_object_unref (scalar_t__) ;
 int notify_notification_close (scalar_t__,int **) ;
 int notify_uninit () ;
 int vlc_mutex_destroy (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_RemoveListener (int *,int ) ;
 int vlc_player_Unlock (int *) ;
 int * vlc_playlist_GetPlayer (int ) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    intf_thread_t *p_intf = ( intf_thread_t* ) p_this;
    intf_sys_t *p_sys = p_intf->p_sys;

    vlc_player_t *player = vlc_playlist_GetPlayer(p_sys->playlist);
    vlc_player_Lock(player);
    vlc_player_RemoveListener(player, p_sys->player_listener);
    vlc_player_Unlock(player);

    if( p_sys->notification )
    {
        GError *p_error = ((void*)0);
        notify_notification_close( p_sys->notification, &p_error );
        g_object_unref( p_sys->notification );
    }

    vlc_mutex_destroy( &p_sys->lock );
    free( p_sys );
    notify_uninit();
}
