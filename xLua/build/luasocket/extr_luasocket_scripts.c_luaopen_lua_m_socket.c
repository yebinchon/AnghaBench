
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_loadstring (int *,int ) ;
 int lua_m_socket ;

int luaopen_lua_m_socket(lua_State *L) {
    luaL_loadstring(L, lua_m_socket);
    return 1;
}
