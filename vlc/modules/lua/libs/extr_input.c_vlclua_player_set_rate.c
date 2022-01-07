
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int lua_State ;


 float luaL_checknumber (int *,int) ;
 int vlc_player_ChangeRate (int *,float) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 int * vlclua_get_player_internal (int *) ;

__attribute__((used)) static int vlclua_player_set_rate(lua_State *L)
{
    vlc_player_t *player = vlclua_get_player_internal(L);

    float rate = luaL_checknumber(L, 1);

    vlc_player_Lock(player);
    vlc_player_ChangeRate(player, rate);
    vlc_player_Unlock(player);

    return 0;
}
