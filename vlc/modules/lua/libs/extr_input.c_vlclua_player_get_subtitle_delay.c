
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int vlc_player_t ;
typedef int lua_State ;


 int lua_pushnumber (int *,double) ;
 double secf_from_vlc_tick (int ) ;
 int vlc_player_GetSubtitleDelay (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 int * vlclua_get_player_internal (int *) ;

__attribute__((used)) static int vlclua_player_get_subtitle_delay(lua_State *L)
{
    vlc_player_t *player = vlclua_get_player_internal(L);

    vlc_player_Lock(player);
    vlc_tick_t delay = vlc_player_GetSubtitleDelay(player);
    vlc_player_Unlock(player);

    double delay_sec = secf_from_vlc_tick(delay);

    lua_pushnumber(L, delay_sec);
    return 1;
}
