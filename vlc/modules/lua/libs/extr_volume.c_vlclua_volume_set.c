
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_player_t ;
typedef int lua_State ;


 scalar_t__ AOUT_VOLUME_DEFAULT ;
 int luaL_checkinteger (int *,int) ;
 int vlc_player_aout_SetVolume (int *,float) ;
 int * vlc_playlist_GetPlayer (int *) ;
 int * vlclua_get_playlist_internal (int *) ;
 int vlclua_push_ret (int *,int) ;

__attribute__((used)) static int vlclua_volume_set(lua_State *L)
{
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);
    vlc_player_t *player = vlc_playlist_GetPlayer(playlist);

    int i_volume = luaL_checkinteger(L, 1);
    if (i_volume < 0)
        i_volume = 0;

    float volume = i_volume / (float) AOUT_VOLUME_DEFAULT;
    int ret = vlc_player_aout_SetVolume(player, volume);
    return vlclua_push_ret(L, ret);
}
