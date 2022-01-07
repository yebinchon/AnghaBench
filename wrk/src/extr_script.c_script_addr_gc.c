
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addr; } ;
typedef int lua_State ;


 struct addrinfo* checkaddr (int *) ;
 int zfree (int ) ;

__attribute__((used)) static int script_addr_gc(lua_State *L) {
    struct addrinfo *addr = checkaddr(L);
    zfree(addr->ai_addr);
    return 0;
}
