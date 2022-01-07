
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int lua_State ;


 int lua_pushlightuserdata (int *,int *) ;
 int lua_pushnil (int *) ;
 int * vlclua_get_playlist_internal (int *) ;

__attribute__((used)) static int vlclua_get_playlist( lua_State *L )
{
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);
    if (playlist)
        lua_pushlightuserdata(L, playlist);
    else
        lua_pushnil(L);
    return 1;
}
