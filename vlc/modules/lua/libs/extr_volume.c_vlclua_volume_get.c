
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_player_t ;
typedef int lua_State ;


 float AOUT_VOLUME_DEFAULT ;
 long lroundf (float) ;
 int lua_pushnumber (int *,long) ;
 float vlc_player_aout_GetVolume (int *) ;
 int * vlc_playlist_GetPlayer (int *) ;
 int * vlclua_get_playlist_internal (int *) ;

__attribute__((used)) static int vlclua_volume_get(lua_State *L)
{
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);
    vlc_player_t *player = vlc_playlist_GetPlayer(playlist);

    float volume = vlc_player_aout_GetVolume(player);

    long i_volume = lroundf(volume * AOUT_VOLUME_DEFAULT);
    lua_pushnumber(L, i_volume);
    return 1;
}
