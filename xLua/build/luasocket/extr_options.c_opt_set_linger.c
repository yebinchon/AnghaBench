
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_short ;
struct linger {void* l_linger; void* l_onoff; } ;
typedef int p_socket ;
typedef int lua_State ;
typedef int li ;


 int LUA_TTABLE ;
 int SOL_SOCKET ;
 int SO_LINGER ;
 int auxiliar_typeerror (int *,int,int ) ;
 int luaL_argerror (int *,int,char*) ;
 int lua_gettable (int *,int) ;
 int lua_isboolean (int *,int) ;
 int lua_isnumber (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_pushstring (int *,char*) ;
 scalar_t__ lua_toboolean (int *,int) ;
 scalar_t__ lua_tonumber (int *,int) ;
 int lua_typename (int *,int ) ;
 int opt_set (int *,int ,int ,int ,char*,int) ;

int opt_set_linger(lua_State *L, p_socket ps)
{
    struct linger li;
    if (!lua_istable(L, 3)) auxiliar_typeerror(L,3,lua_typename(L, LUA_TTABLE));
    lua_pushstring(L, "on");
    lua_gettable(L, 3);
    if (!lua_isboolean(L, -1))
        luaL_argerror(L, 3, "boolean 'on' field expected");
    li.l_onoff = (u_short) lua_toboolean(L, -1);
    lua_pushstring(L, "timeout");
    lua_gettable(L, 3);
    if (!lua_isnumber(L, -1))
        luaL_argerror(L, 3, "number 'timeout' field expected");
    li.l_linger = (u_short) lua_tonumber(L, -1);
    return opt_set(L, ps, SOL_SOCKET, SO_LINGER, (char *) &li, sizeof(li));
}
