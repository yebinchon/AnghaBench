
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_settop (int *,int) ;

__attribute__((used)) static int vlclua_gettext_noop( lua_State *L )
{
    lua_settop( L, 1 );
    return 1;
}
