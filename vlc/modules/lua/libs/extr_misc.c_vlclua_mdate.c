
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushnumber (int *,int ) ;
 int vlc_tick_now () ;

__attribute__((used)) static int vlclua_mdate( lua_State *L )
{
    lua_pushnumber( L, vlc_tick_now() );
    return 1;
}
