
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int lua_State ;


 int * vlclua_get_object (int *,int ) ;
 int vlclua_set_playlist_internal ;

vlc_playlist_t *vlclua_get_playlist_internal(lua_State *L)
{
    return vlclua_get_object(L, vlclua_set_playlist_internal);
}
