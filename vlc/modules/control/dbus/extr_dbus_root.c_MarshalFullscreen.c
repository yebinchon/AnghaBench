
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
 int vlc_player_vout_IsFullscreen (int *) ;
 int * vlc_playlist_GetPlayer (int ) ;

__attribute__((used)) static int
MarshalFullscreen( intf_thread_t *p_intf, DBusMessageIter *container )
{
    dbus_bool_t b_fullscreen;
    vlc_player_t *player = vlc_playlist_GetPlayer(p_intf->p_sys->playlist);
    b_fullscreen = vlc_player_vout_IsFullscreen(player);
    if (!dbus_message_iter_append_basic( container,
            DBUS_TYPE_BOOLEAN, &b_fullscreen ))
        return VLC_ENOMEM;
    return VLC_SUCCESS;
}
