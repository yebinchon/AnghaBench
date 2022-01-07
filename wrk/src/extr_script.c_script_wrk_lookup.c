
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {struct addrinfo* ai_next; int ai_socktype; int ai_family; } ;
typedef int lua_State ;


 int AF_UNSPEC ;
 int SOCK_STREAM ;
 int exit (int) ;
 int fprintf (int ,char*,char const*,char const*,char const*) ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int lua_newtable (int *) ;
 int lua_rawseti (int *,int,int ) ;
 char* lua_tostring (int *,int) ;
 int script_addr_clone (int *,struct addrinfo*) ;
 int stderr ;

__attribute__((used)) static int script_wrk_lookup(lua_State *L) {
    struct addrinfo *addrs;
    struct addrinfo hints = {
        .ai_family = AF_UNSPEC,
        .ai_socktype = SOCK_STREAM
    };
    int rc, index = 1;

    const char *host = lua_tostring(L, -2);
    const char *service = lua_tostring(L, -1);

    if ((rc = getaddrinfo(host, service, &hints, &addrs)) != 0) {
        const char *msg = gai_strerror(rc);
        fprintf(stderr, "unable to resolve %s:%s %s\n", host, service, msg);
        exit(1);
    }

    lua_newtable(L);
    for (struct addrinfo *addr = addrs; addr != ((void*)0); addr = addr->ai_next) {
        script_addr_clone(L, addr);
        lua_rawseti(L, -2, index++);
    }

    freeaddrinfo(addrs);
    return 1;
}
