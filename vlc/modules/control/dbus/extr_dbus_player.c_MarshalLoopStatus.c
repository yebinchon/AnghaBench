
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_playlist_t ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
typedef enum vlc_playlist_playback_repeat { ____Placeholder_vlc_playlist_playback_repeat } vlc_playlist_playback_repeat ;
struct TYPE_4__ {int * playlist; } ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_STRING ;
 char* LOOP_STATUS_NONE ;
 char* LOOP_STATUS_PLAYLIST ;
 char* LOOP_STATUS_TRACK ;
 int VLC_ENOMEM ;



 int VLC_SUCCESS ;
 int dbus_message_iter_append_basic (int *,int ,char const**) ;
 int vlc_assert_unreachable () ;
 int vlc_playlist_GetPlaybackRepeat (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Unlock (int *) ;

__attribute__((used)) static int
MarshalLoopStatus( intf_thread_t *p_intf, DBusMessageIter *container )
{
    vlc_playlist_t *playlist = p_intf->p_sys->playlist;
    vlc_playlist_Lock(playlist);
    enum vlc_playlist_playback_repeat repeat_mode =
        vlc_playlist_GetPlaybackRepeat(playlist);
    vlc_playlist_Unlock(playlist);

    const char *psz_loop_status;
    switch (repeat_mode)
    {
        case 130:
            psz_loop_status = LOOP_STATUS_PLAYLIST;
            break;
        case 129:
            psz_loop_status = LOOP_STATUS_TRACK;
            break;
        case 128:
            psz_loop_status = LOOP_STATUS_NONE;
            break;
        default:
            vlc_assert_unreachable();
    }

    if( !dbus_message_iter_append_basic( container, DBUS_TYPE_STRING,
                                         &psz_loop_status ) )
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}
