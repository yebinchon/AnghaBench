
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_player_t ;
typedef int lua_State ;


 float AOUT_VOLUME_DEFAULT ;
 int VLC_SUCCESS ;
 long lroundf (float) ;
 int luaL_optinteger (int *,int,int) ;
 int lua_pushnumber (int *,long) ;
 int vlc_player_aout_IncrementVolume (int *,int,float*) ;
 int * vlc_playlist_GetPlayer (int *) ;
 int * vlclua_get_playlist_internal (int *) ;

__attribute__((used)) static int vlclua_volume_up(lua_State *L)
{
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);
    vlc_player_t *player = vlc_playlist_GetPlayer(playlist);

    float volume;
    int steps = luaL_optinteger(L, 1, 1);
    int res = vlc_player_aout_IncrementVolume(player, steps, &volume);

    long i_volume = res == VLC_SUCCESS ? lroundf(volume * AOUT_VOLUME_DEFAULT)
                                       : 0;
    lua_pushnumber(L, i_volume);
    return 1;
}
