
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int lua_State ;


 int lua_createtable (int *,size_t,int ) ;
 int lua_rawseti (int *,int,size_t) ;
 int push_playlist_item (int *,int ) ;
 size_t vlc_playlist_Count (int *) ;
 int vlc_playlist_Get (int *,size_t) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Unlock (int *) ;
 int * vlclua_get_playlist_internal (int *) ;

__attribute__((used)) static int vlclua_playlist_list(lua_State *L)
{
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);

    vlc_playlist_Lock(playlist);

    size_t count = vlc_playlist_Count(playlist);
    lua_createtable(L, count, 0);

    for (size_t i = 0; i < count; ++i)
    {
        push_playlist_item(L, vlc_playlist_Get(playlist, i));
        lua_rawseti(L, -2, i + 1);
    }

    vlc_playlist_Unlock(playlist);

    return 1;
}
