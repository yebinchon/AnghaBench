
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int lua_State ;
typedef enum vlc_playlist_playback_repeat { ____Placeholder_vlc_playlist_playback_repeat } vlc_playlist_playback_repeat ;


 int VLC_PLAYLIST_PLAYBACK_REPEAT_ALL ;
 int lua_pushboolean (int *,int) ;
 int vlc_playlist_GetPlaybackRepeat (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Unlock (int *) ;
 int * vlclua_get_playlist_internal (int *) ;

__attribute__((used)) static int vlclua_playlist_get_loop(lua_State *L)
{
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);

    vlc_playlist_Lock(playlist);
    enum vlc_playlist_playback_repeat repeat =
            vlc_playlist_GetPlaybackRepeat(playlist);
    bool result = repeat == VLC_PLAYLIST_PLAYBACK_REPEAT_ALL;
    vlc_playlist_Unlock(playlist);

    lua_pushboolean(L, result);
    return 1;
}
