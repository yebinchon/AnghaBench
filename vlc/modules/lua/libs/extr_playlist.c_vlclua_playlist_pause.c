
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_player_t ;
typedef int lua_State ;


 scalar_t__ VLC_PLAYER_STATE_PAUSED ;
 scalar_t__ vlc_player_GetState (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Pause (int *) ;
 int vlc_player_Resume (int *) ;
 int vlc_player_Unlock (int *) ;
 int * vlc_playlist_GetPlayer (int *) ;
 int * vlclua_get_playlist_internal (int *) ;

__attribute__((used)) static int vlclua_playlist_pause(lua_State *L)
{

    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);
    vlc_player_t *player = vlc_playlist_GetPlayer(playlist);

    vlc_player_Lock(player);
    if (vlc_player_GetState(player) != VLC_PLAYER_STATE_PAUSED)
        vlc_player_Pause(player);
    else
        vlc_player_Resume(player);
    vlc_player_Unlock(player);

    return 0;
}
