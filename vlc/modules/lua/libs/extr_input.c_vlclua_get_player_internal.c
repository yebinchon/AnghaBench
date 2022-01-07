
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_player_t ;
typedef int lua_State ;


 int * vlc_playlist_GetPlayer (int *) ;
 int * vlclua_get_playlist_internal (int *) ;

vlc_player_t *vlclua_get_player_internal(lua_State *L) {
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);
    return vlc_playlist_GetPlayer(playlist);
}
