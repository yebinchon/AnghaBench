
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char const* luaL_checkstring (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;

__attribute__((used)) static inline const char *luaL_nilorcheckstring( lua_State *L, int narg )
{
    if( lua_isnil( L, narg ) )
        return ((void*)0);
    return luaL_checkstring( L, narg );
}
