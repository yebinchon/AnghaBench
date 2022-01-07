
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
struct TYPE_2__ {int s_addr; } ;
struct ip_mreq {TYPE_1__ imr_interface; TYPE_1__ imr_multiaddr; } ;
typedef int p_socket ;
typedef int lua_State ;


 int INADDR_ANY ;
 int LUA_TTABLE ;
 int auxiliar_typeerror (int *,int,int ) ;
 int htonl (int ) ;
 int inet_aton (int ,TYPE_1__*) ;
 int luaL_argerror (int *,int,char*) ;
 int lua_gettable (int *,int) ;
 int lua_isstring (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_tostring (int *,int) ;
 int lua_typename (int *,int ) ;
 int opt_set (int *,int ,int,int,char*,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int opt_setmembership(lua_State *L, p_socket ps, int level, int name)
{
    struct ip_mreq val;
    if (!lua_istable(L, 3)) auxiliar_typeerror(L,3,lua_typename(L, LUA_TTABLE));
    lua_pushstring(L, "multiaddr");
    lua_gettable(L, 3);
    if (!lua_isstring(L, -1))
        luaL_argerror(L, 3, "string 'multiaddr' field expected");
    if (!inet_aton(lua_tostring(L, -1), &val.imr_multiaddr))
        luaL_argerror(L, 3, "invalid 'multiaddr' ip address");
    lua_pushstring(L, "interface");
    lua_gettable(L, 3);
    if (!lua_isstring(L, -1))
        luaL_argerror(L, 3, "string 'interface' field expected");
    val.imr_interface.s_addr = htonl(INADDR_ANY);
    if (strcmp(lua_tostring(L, -1), "*") &&
            !inet_aton(lua_tostring(L, -1), &val.imr_interface))
        luaL_argerror(L, 3, "invalid 'interface' ip address");
    return opt_set(L, ps, level, name, (char *) &val, sizeof(val));
}
