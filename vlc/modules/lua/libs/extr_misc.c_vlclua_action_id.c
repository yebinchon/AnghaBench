
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vlc_action_id_t ;
typedef int lua_State ;


 int luaL_checkstring (int *,int) ;
 int lua_pushnumber (int *,scalar_t__) ;
 scalar_t__ vlc_actions_get_id (int ) ;

__attribute__((used)) static int vlclua_action_id( lua_State *L )
{
    vlc_action_id_t i_key = vlc_actions_get_id( luaL_checkstring( L, 1 ) );
    if (i_key == 0)
        return 0;
    lua_pushnumber( L, i_key );
    return 1;
}
