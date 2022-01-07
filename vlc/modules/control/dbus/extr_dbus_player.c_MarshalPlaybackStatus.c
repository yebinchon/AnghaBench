
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
typedef enum vlc_player_state { ____Placeholder_vlc_player_state } vlc_player_state ;
struct TYPE_4__ {int playlist; } ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_STRING ;
 char* PLAYBACK_STATUS_PAUSED ;
 char* PLAYBACK_STATUS_PLAYING ;
 char* PLAYBACK_STATUS_STOPPED ;
 int VLC_ENOMEM ;



 int VLC_SUCCESS ;
 int dbus_message_iter_append_basic (int *,int ,char const**) ;
 int vlc_player_GetState (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 int * vlc_playlist_GetPlayer (int ) ;

__attribute__((used)) static int
MarshalPlaybackStatus( intf_thread_t *p_intf, DBusMessageIter *container )
{
    vlc_player_t *player = vlc_playlist_GetPlayer(p_intf->p_sys->playlist);
    vlc_player_Lock(player);
    enum vlc_player_state state = vlc_player_GetState(player);
    vlc_player_Unlock(player);

    const char *psz_playback_status;
    switch (state)
    {
        case 128:
        case 129:
            psz_playback_status = PLAYBACK_STATUS_PLAYING;
            break;
        case 130:
            psz_playback_status = PLAYBACK_STATUS_PAUSED;
            break;
        default:
            psz_playback_status = PLAYBACK_STATUS_STOPPED;
    }

    if( !dbus_message_iter_append_basic( container, DBUS_TYPE_STRING,
                                         &psz_playback_status ) )
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}
