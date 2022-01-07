
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; } ;
typedef int lua_State ;


 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 struct addrinfo* checkaddr (int *) ;
 char* gai_strerror (int) ;
 int getnameinfo (int ,int ,char*,int,char*,int,int) ;
 int luaL_error (int *,char*,char const*) ;
 int lua_pushfstring (int *,char*,char*,char*) ;

__attribute__((used)) static int script_addr_tostring(lua_State *L) {
    struct addrinfo *addr = checkaddr(L);
    char host[NI_MAXHOST];
    char service[NI_MAXSERV];

    int flags = NI_NUMERICHOST | NI_NUMERICSERV;
    int rc = getnameinfo(addr->ai_addr, addr->ai_addrlen, host, NI_MAXHOST, service, NI_MAXSERV, flags);
    if (rc != 0) {
        const char *msg = gai_strerror(rc);
        return luaL_error(L, "addr tostring failed %s", msg);
    }

    lua_pushfstring(L, "%s:%s", host, service);
    return 1;
}
