
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int lua_State ;
typedef int audio_output_t ;


 int * vlc_player_aout_Hold (int *) ;
 int * vlclua_get_player_internal (int *) ;

audio_output_t *vlclua_get_aout_internal(lua_State *L)
{
    vlc_player_t *player = vlclua_get_player_internal(L);
    return vlc_player_aout_Hold(player);
}
