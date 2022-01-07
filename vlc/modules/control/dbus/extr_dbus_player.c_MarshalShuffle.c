
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_playlist_t ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
typedef enum vlc_playlist_playback_order { ____Placeholder_vlc_playlist_playback_order } vlc_playlist_playback_order ;
typedef int dbus_bool_t ;
struct TYPE_4__ {int * playlist; } ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_BOOLEAN ;
 int VLC_ENOMEM ;
 int VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ;
 int VLC_SUCCESS ;
 int dbus_message_iter_append_basic (int *,int ,int*) ;
 int vlc_playlist_GetPlaybackOrder (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Unlock (int *) ;

__attribute__((used)) static int
MarshalShuffle( intf_thread_t *p_intf, DBusMessageIter *container )
{
    vlc_playlist_t *playlist = p_intf->p_sys->playlist;
    vlc_playlist_Lock(playlist);
    enum vlc_playlist_playback_order order_mode =
        vlc_playlist_GetPlaybackOrder(playlist);
    vlc_playlist_Unlock(playlist);

    dbus_bool_t b_shuffle = order_mode == VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM;
    if( !dbus_message_iter_append_basic( container, DBUS_TYPE_BOOLEAN,
                                         &b_shuffle ))
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}
