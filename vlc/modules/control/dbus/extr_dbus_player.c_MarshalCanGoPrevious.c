
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_playlist_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
typedef enum vlc_playlist_playback_repeat { ____Placeholder_vlc_playlist_playback_repeat } vlc_playlist_playback_repeat ;
typedef int dbus_bool_t ;
struct TYPE_4__ {int * playlist; } ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_BOOLEAN ;
 int VLC_ENOMEM ;
 int VLC_PLAYLIST_PLAYBACK_REPEAT_NONE ;
 int VLC_SUCCESS ;
 int dbus_message_iter_append_basic (int *,int ,int*) ;
 size_t vlc_playlist_Count (int *) ;
 scalar_t__ vlc_playlist_GetCurrentIndex (int *) ;
 int vlc_playlist_GetPlaybackRepeat (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Unlock (int *) ;

__attribute__((used)) static int
MarshalCanGoPrevious( intf_thread_t *p_intf, DBusMessageIter *container )
{
    vlc_playlist_t *playlist = p_intf->p_sys->playlist;
    vlc_playlist_Lock(playlist);
    size_t count = vlc_playlist_Count(playlist);
    ssize_t index = vlc_playlist_GetCurrentIndex(playlist);
    enum vlc_playlist_playback_repeat repeat_mode =
        vlc_playlist_GetPlaybackRepeat(playlist);
    vlc_playlist_Unlock(playlist);

    dbus_bool_t b_can_go_previous =
        count != 0 &&
        (index > 0 || repeat_mode != VLC_PLAYLIST_PLAYBACK_REPEAT_NONE);

    if( !dbus_message_iter_append_basic( container, DBUS_TYPE_BOOLEAN,
                                         &b_can_go_previous ) )
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}
