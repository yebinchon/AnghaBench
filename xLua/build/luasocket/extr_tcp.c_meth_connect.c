
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct addrinfo {int ai_family; int ai_socktype; } ;
typedef TYPE_1__* p_tcp ;
typedef int lua_State ;
typedef int connecthints ;
struct TYPE_2__ {int tm; int family; int sock; } ;


 int SOCK_STREAM ;
 int auxiliar_checkgroup (int *,char*,int) ;
 int auxiliar_setclass (int *,char*,int) ;
 char* inet_tryconnect (int *,int *,char const*,char const*,int *,struct addrinfo*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 int memset (struct addrinfo*,int ,int) ;
 int timeout_markstart (int *) ;

__attribute__((used)) static int meth_connect(lua_State *L)
{
    p_tcp tcp = (p_tcp) auxiliar_checkgroup(L, "tcp{any}", 1);
    const char *address = luaL_checkstring(L, 2);
    const char *port = luaL_checkstring(L, 3);
    struct addrinfo connecthints;
    const char *err;
    memset(&connecthints, 0, sizeof(connecthints));
    connecthints.ai_socktype = SOCK_STREAM;

    connecthints.ai_family = tcp->family;
    timeout_markstart(&tcp->tm);
    err = inet_tryconnect(&tcp->sock, &tcp->family, address, port,
        &tcp->tm, &connecthints);

    auxiliar_setclass(L, "tcp{client}", 1);
    if (err) {
        lua_pushnil(L);
        lua_pushstring(L, err);
        return 2;
    }
    lua_pushnumber(L, 1);
    return 1;
}
