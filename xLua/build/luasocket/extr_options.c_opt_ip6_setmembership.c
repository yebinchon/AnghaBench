
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct ipv6_mreq {unsigned int ipv6mr_interface; int ipv6mr_multiaddr; } ;
typedef int p_socket ;
typedef int lua_State ;


 int AF_INET6 ;
 int LUA_TTABLE ;
 int auxiliar_typeerror (int *,int,int ) ;
 int inet_pton_w32 (int ,int ,int *) ;
 int luaL_argerror (int *,int,char*) ;
 int lua_gettable (int *,int) ;
 int lua_isnil (int *,int) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int lua_isstring (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_pushstring (int *,char*) ;
 scalar_t__ lua_tonumber (int *,int) ;
 int lua_tostring (int *,int) ;
 int lua_typename (int *,int ) ;
 int memset (struct ipv6_mreq*,int ,int) ;
 int opt_set (int *,int ,int,int,char*,int) ;

__attribute__((used)) static int opt_ip6_setmembership(lua_State *L, p_socket ps, int level, int name)
{
    struct ipv6_mreq val;
    memset(&val, 0, sizeof(val));
    if (!lua_istable(L, 3)) auxiliar_typeerror(L,3,lua_typename(L, LUA_TTABLE));
    lua_pushstring(L, "multiaddr");
    lua_gettable(L, 3);
    if (!lua_isstring(L, -1))
        luaL_argerror(L, 3, "string 'multiaddr' field expected");
    if (!inet_pton_w32(AF_INET6, lua_tostring(L, -1), &val.ipv6mr_multiaddr))
        luaL_argerror(L, 3, "invalid 'multiaddr' ip address");
    lua_pushstring(L, "interface");
    lua_gettable(L, 3);




    if (!lua_isnil(L, -1)) {
        if (lua_isnumber(L, -1)) {
            val.ipv6mr_interface = (unsigned int) lua_tonumber(L, -1);
        } else
          luaL_argerror(L, -1, "number 'interface' field expected");
    }
    return opt_set(L, ps, level, name, (char *) &val, sizeof(val));
}
