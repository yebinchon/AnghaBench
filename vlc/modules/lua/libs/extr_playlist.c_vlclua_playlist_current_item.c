
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
typedef int ssize_t ;
typedef int lua_State ;


 int lua_pushnil (int *) ;
 int push_playlist_item (int *,int *) ;
 int * vlc_playlist_Get (int *,int) ;
 int vlc_playlist_GetCurrentIndex (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Unlock (int *) ;
 int * vlclua_get_playlist_internal (int *) ;

__attribute__((used)) static int vlclua_playlist_current_item(lua_State *L)
{
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);

    vlc_playlist_Lock(playlist);
    ssize_t index = vlc_playlist_GetCurrentIndex(playlist);
    vlc_playlist_item_t *item = index != -1 ? vlc_playlist_Get(playlist, index)
                                            : ((void*)0);
    if (item)
        push_playlist_item(L, item);
    else
        lua_pushnil(L);
    vlc_playlist_Unlock(playlist);

    return 1;
}
