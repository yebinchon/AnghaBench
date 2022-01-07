
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
typedef int libvlc_state_t ;
struct TYPE_3__ {int * player; } ;
typedef TYPE_1__ libvlc_media_player_t ;
typedef enum vlc_player_state { ____Placeholder_vlc_player_state } vlc_player_state ;
typedef enum vlc_player_error { ____Placeholder_vlc_player_error } vlc_player_error ;


 int VLC_PLAYER_ERROR_NONE ;





 int libvlc_Ended ;
 int libvlc_Error ;
 int libvlc_Opening ;
 int libvlc_Paused ;
 int libvlc_Playing ;
 int libvlc_Stopped ;
 int vlc_assert_unreachable () ;
 int vlc_player_GetError (int *) ;
 int vlc_player_GetState (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;

libvlc_state_t libvlc_media_player_get_state( libvlc_media_player_t *p_mi )
{
    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    enum vlc_player_error error = vlc_player_GetError(player);
    enum vlc_player_state state = vlc_player_GetState(player);

    vlc_player_Unlock(player);

    if (error != VLC_PLAYER_ERROR_NONE)
        return libvlc_Error;
    switch (state) {
        case 129:
            return libvlc_Stopped;
        case 128:
            return libvlc_Ended;
        case 130:
            return libvlc_Opening;
        case 131:
            return libvlc_Playing;
        case 132:
            return libvlc_Paused;
        default:
            vlc_assert_unreachable();
    }
}
