
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
typedef int ssize_t ;
typedef int lua_State ;


 int lua_pushinteger (int *,int) ;
 int * vlc_playlist_Get (int *,int) ;
 int vlc_playlist_GetCurrentIndex (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Unlock (int *) ;
 int vlc_playlist_item_GetId (int *) ;
 int * vlclua_get_playlist_internal (int *) ;

__attribute__((used)) static int vlclua_playlist_current(lua_State *L)
{
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);

    vlc_playlist_Lock(playlist);
    ssize_t current = vlc_playlist_GetCurrentIndex(playlist);
    int id;
    if (current != -1) {
        vlc_playlist_item_t *item = vlc_playlist_Get(playlist, current);
        id = vlc_playlist_item_GetId(item);
    } else
        id = -1;
    vlc_playlist_Unlock(playlist);

    lua_pushinteger(L, id);
    return 1;
}
