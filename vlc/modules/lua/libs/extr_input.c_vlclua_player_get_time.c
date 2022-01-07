
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int vlc_player_t ;
typedef int lua_State ;


 int US_FROM_VLC_TICK (int ) ;
 int lua_pushinteger (int *,int ) ;
 int vlc_player_GetTime (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 int * vlclua_get_player_internal (int *) ;

__attribute__((used)) static int vlclua_player_get_time(lua_State *L)
{
    vlc_player_t *player = vlclua_get_player_internal(L);

    vlc_player_Lock(player);
    vlc_tick_t time = vlc_player_GetTime(player);
    vlc_player_Unlock(player);

    lua_pushinteger(L, US_FROM_VLC_TICK(time));
    return 1;
}
