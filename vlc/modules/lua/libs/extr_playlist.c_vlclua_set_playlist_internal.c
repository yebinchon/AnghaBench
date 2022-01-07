
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int lua_State ;


 int vlclua_set_object (int *,void (*) (int *,int *),int *) ;

void vlclua_set_playlist_internal(lua_State *L, vlc_playlist_t *playlist)
{
    vlclua_set_object(L, vlclua_set_playlist_internal, playlist);
}
