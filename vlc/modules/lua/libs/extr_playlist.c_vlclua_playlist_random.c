
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int lua_State ;
typedef enum vlc_playlist_playback_order { ____Placeholder_vlc_playlist_playback_order } vlc_playlist_playback_order ;


 int VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL ;
 int VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ;
 int lua_gettop (int *) ;
 int lua_pushboolean (int *,int) ;
 int take_bool (int *) ;
 int vlc_playlist_GetPlaybackOrder (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_SetPlaybackOrder (int *,int) ;
 int vlc_playlist_Unlock (int *) ;
 int vlclua_error (int *) ;
 int * vlclua_get_playlist_internal (int *) ;

__attribute__((used)) static int vlclua_playlist_random(lua_State *L)
{
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);
    int top = lua_gettop(L);
    if (top > 1)
        return vlclua_error(L);

    vlc_playlist_Lock(playlist);

    bool enable;
    if (top == 0)
    {
        enum vlc_playlist_playback_order order =
                vlc_playlist_GetPlaybackOrder(playlist);
        enable = order != VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM;
    }
    else
    {

        enable = take_bool(L);
    }

    enum vlc_playlist_playback_order new_order = enable
                                    ? VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM
                                    : VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL;

    vlc_playlist_SetPlaybackOrder(playlist, new_order);

    vlc_playlist_Unlock(playlist);

    lua_pushboolean(L, enable);
    return 1;
}
