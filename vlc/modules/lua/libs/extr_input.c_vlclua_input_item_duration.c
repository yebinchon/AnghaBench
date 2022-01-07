
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int lua_State ;


 int input_item_GetDuration (int ) ;
 int lua_pushnumber (int *,int ) ;
 int secf_from_vlc_tick (int ) ;
 int vlclua_input_item_get_internal (int *) ;

__attribute__((used)) static int vlclua_input_item_duration( lua_State *L )
{
    vlc_tick_t duration = input_item_GetDuration( vlclua_input_item_get_internal( L ) );
    lua_pushnumber( L, secf_from_vlc_tick(duration) );
    return 1;
}
