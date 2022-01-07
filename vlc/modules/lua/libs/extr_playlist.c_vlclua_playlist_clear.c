
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int lua_State ;


 int vlc_playlist_Clear (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Unlock (int *) ;
 int * vlclua_get_playlist_internal (int *) ;

__attribute__((used)) static int vlclua_playlist_clear( lua_State *L)
{
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);
    vlc_playlist_Lock(playlist);
    vlc_playlist_Clear(playlist);
    vlc_playlist_Unlock(playlist);
    return 0;
}
