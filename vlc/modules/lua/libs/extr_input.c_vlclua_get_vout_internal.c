
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int vlc_player_t ;
typedef int lua_State ;


 int * vlc_player_vout_Hold (int *) ;
 int * vlclua_get_player_internal (int *) ;

vout_thread_t *vlclua_get_vout_internal(lua_State *L)
{
    vlc_player_t *player = vlclua_get_player_internal(L);
    return vlc_player_vout_Hold(player);
}
