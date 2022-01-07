
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkstring (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 char* strdup (int ) ;

__attribute__((used)) static inline char *luaL_strdupornull( lua_State *L, int narg )
{
    if( lua_isstring( L, narg ) )
        return strdup( luaL_checkstring( L, narg ) );
    return ((void*)0);
}
