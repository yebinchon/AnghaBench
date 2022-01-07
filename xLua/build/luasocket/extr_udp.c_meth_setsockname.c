
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct addrinfo {int ai_flags; int ai_family; int ai_socktype; } ;
typedef TYPE_1__* p_udp ;
typedef int lua_State ;
typedef int bindhints ;
struct TYPE_2__ {int sock; int family; } ;


 int AI_PASSIVE ;
 int SOCK_DGRAM ;
 int auxiliar_checkclass (int *,char*,int) ;
 char* inet_trybind (int *,char const*,char const*,struct addrinfo*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 int memset (struct addrinfo*,int ,int) ;

__attribute__((used)) static int meth_setsockname(lua_State *L) {
    p_udp udp = (p_udp) auxiliar_checkclass(L, "udp{unconnected}", 1);
    const char *address = luaL_checkstring(L, 2);
    const char *port = luaL_checkstring(L, 3);
    const char *err;
    struct addrinfo bindhints;
    memset(&bindhints, 0, sizeof(bindhints));
    bindhints.ai_socktype = SOCK_DGRAM;
    bindhints.ai_family = udp->family;
    bindhints.ai_flags = AI_PASSIVE;
    err = inet_trybind(&udp->sock, address, port, &bindhints);
    if (err) {
        lua_pushnil(L);
        lua_pushstring(L, err);
        return 2;
    }
    lua_pushnumber(L, 1);
    return 1;
}
