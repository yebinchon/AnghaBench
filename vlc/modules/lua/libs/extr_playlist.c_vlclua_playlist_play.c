
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int lua_State ;


 scalar_t__ vlc_playlist_Count (int *) ;
 int vlc_playlist_GetCurrentIndex (int *) ;
 int vlc_playlist_GoTo (int *,int ) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Start (int *) ;
 int vlc_playlist_Unlock (int *) ;
 int * vlclua_get_playlist_internal (int *) ;

__attribute__((used)) static int vlclua_playlist_play(lua_State *L)
{
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);
    vlc_playlist_Lock(playlist);
    if (vlc_playlist_GetCurrentIndex(playlist) == -1 &&
            vlc_playlist_Count(playlist) > 0)
        vlc_playlist_GoTo(playlist, 0);
    vlc_playlist_Start(playlist);
    vlc_playlist_Unlock(playlist);
    return 0;
}
