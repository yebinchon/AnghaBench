
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int lua_State ;


 int lua_pushlightuserdata (int *,int *) ;
 int lua_pushnil (int *) ;
 int * vlclua_get_player_internal (int *) ;

__attribute__((used)) static int vlclua_get_player( lua_State *L )
{
    vlc_player_t *player = vlclua_get_player_internal(L);
    if (player)
        lua_pushlightuserdata(L, player);
    else
        lua_pushnil(L);
    return 1;
}
