
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int lua_State ;
typedef enum vlc_playlist_playback_repeat { ____Placeholder_vlc_playlist_playback_repeat } vlc_playlist_playback_repeat ;


 int VLC_PLAYLIST_PLAYBACK_REPEAT_NONE ;
 int lua_gettop (int *) ;
 int lua_pushboolean (int *,int) ;
 int take_bool (int *) ;
 int vlc_playlist_GetPlaybackRepeat (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_SetPlaybackRepeat (int *,int) ;
 int vlc_playlist_Unlock (int *) ;
 int vlclua_error (int *) ;
 int * vlclua_get_playlist_internal (int *) ;

__attribute__((used)) static int vlclua_playlist_repeat_(lua_State *L,
                               enum vlc_playlist_playback_repeat enabled_mode)
{
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);
    int top = lua_gettop(L);
    if (top > 1)
        return vlclua_error(L);

    vlc_playlist_Lock(playlist);

    bool enable;
    if (top == 0)
    {

        enum vlc_playlist_playback_repeat repeat =
                vlc_playlist_GetPlaybackRepeat(playlist);
        enable = repeat != enabled_mode;
    }
    else
    {

        enable = take_bool(L);
    }

    enum vlc_playlist_playback_repeat new_repeat = enable
                                    ? enabled_mode
                                    : VLC_PLAYLIST_PLAYBACK_REPEAT_NONE;

    vlc_playlist_SetPlaybackRepeat(playlist, new_repeat);

    vlc_playlist_Unlock(playlist);

    lua_pushboolean(L, enable);
    return 1;
}
