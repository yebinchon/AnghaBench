
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {scalar_t__ ai_addrlen; int ai_addr; struct addrinfo* ai_next; int ai_family; int ai_socktype; } ;
typedef int socklen_t ;
typedef int sbuf ;
typedef int lua_State ;
typedef int hints ;
typedef int hbuf ;


 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int getnameinfo (int ,int ,char*,int ,char*,int ,int ) ;
 int luaL_error (int *,char*) ;
 char* luaL_optstring (int *,int,int *) ;
 int lua_newtable (int *) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_settable (int *,int) ;
 int memset (struct addrinfo*,int ,int) ;
 char* socket_gaistrerror (int) ;

__attribute__((used)) static int inet_global_getnameinfo(lua_State *L) {
    char hbuf[NI_MAXHOST];
    char sbuf[NI_MAXSERV];
    int i, ret;
    struct addrinfo hints;
    struct addrinfo *resolved, *iter;
    const char *host = luaL_optstring(L, 1, ((void*)0));
    const char *serv = luaL_optstring(L, 2, ((void*)0));

    if (!(host || serv))
        luaL_error(L, "host and serv cannot be both nil");

    memset(&hints, 0, sizeof(hints));
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_family = PF_UNSPEC;

    ret = getaddrinfo(host, serv, &hints, &resolved);
    if (ret != 0) {
        lua_pushnil(L);
        lua_pushstring(L, socket_gaistrerror(ret));
        return 2;
    }

    lua_newtable(L);
    for (i = 1, iter = resolved; iter; i++, iter = iter->ai_next) {
        getnameinfo(iter->ai_addr, (socklen_t) iter->ai_addrlen,
            hbuf, host? (socklen_t) sizeof(hbuf): 0,
            sbuf, serv? (socklen_t) sizeof(sbuf): 0, 0);
        if (host) {
            lua_pushnumber(L, i);
            lua_pushstring(L, hbuf);
            lua_settable(L, -3);
        }
    }
    freeaddrinfo(resolved);

    if (serv) {
        lua_pushstring(L, sbuf);
        return 2;
    } else {
        return 1;
    }
}
