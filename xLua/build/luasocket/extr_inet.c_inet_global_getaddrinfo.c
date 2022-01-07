
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_family; scalar_t__ ai_addrlen; int ai_addr; struct addrinfo* ai_next; int ai_socktype; } ;
typedef int socklen_t ;
typedef int lua_State ;
typedef int hints ;
typedef int hbuf ;




 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char const*,int *,struct addrinfo*,struct addrinfo**) ;
 int getnameinfo (int ,int ,char*,int ,int *,int ,int ) ;
 char* luaL_checkstring (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_settable (int *,int) ;
 int memset (struct addrinfo*,int ,int) ;
 char* socket_gaistrerror (int) ;

__attribute__((used)) static int inet_global_getaddrinfo(lua_State *L)
{
    const char *hostname = luaL_checkstring(L, 1);
    struct addrinfo *iterator = ((void*)0), *resolved = ((void*)0);
    struct addrinfo hints;
    int i = 1, ret = 0;
    memset(&hints, 0, sizeof(hints));
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_family = PF_UNSPEC;
    ret = getaddrinfo(hostname, ((void*)0), &hints, &resolved);
    if (ret != 0) {
        lua_pushnil(L);
        lua_pushstring(L, socket_gaistrerror(ret));
        return 2;
    }
    lua_newtable(L);
    for (iterator = resolved; iterator; iterator = iterator->ai_next) {
        char hbuf[NI_MAXHOST];
        ret = getnameinfo(iterator->ai_addr, (socklen_t) iterator->ai_addrlen,
            hbuf, (socklen_t) sizeof(hbuf), ((void*)0), 0, NI_NUMERICHOST);
        if (ret){
          lua_pushnil(L);
          lua_pushstring(L, socket_gaistrerror(ret));
          return 2;
        }
        lua_pushnumber(L, i);
        lua_newtable(L);
        switch (iterator->ai_family) {
            case 129:
                lua_pushliteral(L, "family");
                lua_pushliteral(L, "inet");
                lua_settable(L, -3);
                break;
            case 128:
                lua_pushliteral(L, "family");
                lua_pushliteral(L, "inet6");
                lua_settable(L, -3);
                break;
        }
        lua_pushliteral(L, "addr");
        lua_pushstring(L, hbuf);
        lua_settable(L, -3);
        lua_settable(L, -3);
        i++;
    }
    freeaddrinfo(resolved);
    return 1;
}
