
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; } ;
typedef int lua_State ;


 struct addrinfo* checkaddr (int *) ;
 int close (int) ;
 scalar_t__ connect (int,int ,int ) ;
 int lua_pushboolean (int *,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int script_wrk_connect(lua_State *L) {
    struct addrinfo *addr = checkaddr(L);
    int fd, connected = 0;
    if ((fd = socket(addr->ai_family, addr->ai_socktype, addr->ai_protocol)) != -1) {
        connected = connect(fd, addr->ai_addr, addr->ai_addrlen) == 0;
        close(fd);
    }
    lua_pushboolean(L, connected);
    return 1;
}
