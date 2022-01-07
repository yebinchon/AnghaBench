
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_getmetatable (int *,char const*) ;
 int lua_pop (int *,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 int lua_rawset (int *,int) ;

void auxiliar_add2group(lua_State *L, const char *classname, const char *groupname) {
    luaL_getmetatable(L, classname);
    lua_pushstring(L, groupname);
    lua_pushboolean(L, 1);
    lua_rawset(L, -3);
    lua_pop(L, 1);
}
