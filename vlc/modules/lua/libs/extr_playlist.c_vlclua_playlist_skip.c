
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int vlc_playlist_Next (int *) ;
 int vlc_playlist_Prev (int *) ;
 int * vlclua_get_playlist_internal (int *) ;

__attribute__((used)) static int vlclua_playlist_skip(lua_State *L)
{
    int n = luaL_checkinteger( L, 1 );
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);
    if (n < 0) {
        for (int i = 0; i < -n; i++)
            vlc_playlist_Prev(playlist);
    } else {
        for (int i = 0; i < n; ++i)
            vlc_playlist_Next(playlist);
    }
    return 0;
}
