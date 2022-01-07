
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 int lua_pop (int *,int) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static bool take_bool(lua_State *L)
{
    const char *s = luaL_checkstring(L, -1);
    lua_pop( L, 1 );
    return s && !strcmp(s, "on");
}
