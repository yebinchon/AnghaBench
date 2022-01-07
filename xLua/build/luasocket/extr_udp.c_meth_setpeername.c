
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct addrinfo {int ai_family; int ai_socktype; } ;
typedef TYPE_1__* p_udp ;
typedef int * p_timeout ;
typedef int lua_State ;
typedef int connecthints ;
struct TYPE_2__ {int family; int sock; int tm; } ;


 int SOCK_DGRAM ;
 int auxiliar_checkgroup (int *,char*,int) ;
 int auxiliar_setclass (int *,char*,int) ;
 char* inet_tryconnect (int *,int *,char const*,char const*,int *,struct addrinfo*) ;
 int inet_trydisconnect (int *,int ,int *) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 int memset (struct addrinfo*,int ,int) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int meth_setpeername(lua_State *L) {
    p_udp udp = (p_udp) auxiliar_checkgroup(L, "udp{any}", 1);
    p_timeout tm = &udp->tm;
    const char *address = luaL_checkstring(L, 2);
    int connecting = strcmp(address, "*");
    const char *port = connecting? luaL_checkstring(L, 3): "0";
    struct addrinfo connecthints;
    const char *err;
    memset(&connecthints, 0, sizeof(connecthints));
    connecthints.ai_socktype = SOCK_DGRAM;

    connecthints.ai_family = udp->family;
    if (connecting) {
        err = inet_tryconnect(&udp->sock, &udp->family, address,
            port, tm, &connecthints);
        if (err) {
            lua_pushnil(L);
            lua_pushstring(L, err);
            return 2;
        }
        auxiliar_setclass(L, "udp{connected}", 1);
    } else {


        inet_trydisconnect(&udp->sock, udp->family, tm);
        auxiliar_setclass(L, "udp{unconnected}", 1);
    }

    lua_pushnumber(L, 1);
    return 1;
}
