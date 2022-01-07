
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int lua_State ;


 int lua_pushnumber (int *,float) ;
 float vlc_player_GetRate (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 int * vlclua_get_player_internal (int *) ;

__attribute__((used)) static int vlclua_player_get_rate(lua_State *L)
{
    vlc_player_t *player = vlclua_get_player_internal(L);

    vlc_player_Lock(player);
    float rate = vlc_player_GetRate(player);
    vlc_player_Unlock(player);

    lua_pushnumber(L, rate);
    return 1;
}
