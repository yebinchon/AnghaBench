
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
typedef int dbus_bool_t ;
struct TYPE_4__ {int playlist; } ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_BOOLEAN ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int dbus_message_iter_append_basic (int *,int ,int *) ;
 int vlc_player_CanPause (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 int * vlc_playlist_GetPlayer (int ) ;

__attribute__((used)) static int
MarshalCanPause( intf_thread_t *p_intf, DBusMessageIter *container )
{
    vlc_player_t *player = vlc_playlist_GetPlayer(p_intf->p_sys->playlist);
    vlc_player_Lock(player);
    dbus_bool_t b_can_pause = vlc_player_CanPause(player);
    vlc_player_Unlock(player);

    if( !dbus_message_iter_append_basic( container, DBUS_TYPE_BOOLEAN,
                                         &b_can_pause ) )
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}
