
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_SelectTitleIdx (int *,int) ;
 int vlc_player_Unlock (int *) ;
 int * vlclua_get_player_internal (int *) ;

__attribute__((used)) static int vlclua_player_title_goto(lua_State *L)
{
    int idx = luaL_checkinteger(L, 1);

    vlc_player_t *player = vlclua_get_player_internal(L);

    vlc_player_Lock(player);
    vlc_player_SelectTitleIdx(player, idx);
    vlc_player_Unlock(player);

    return 0;
}
