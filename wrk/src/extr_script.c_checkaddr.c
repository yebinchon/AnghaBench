
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int dummy; } ;
typedef int lua_State ;


 int luaL_argcheck (int *,int ,int,char*) ;
 struct addrinfo* luaL_checkudata (int *,int,char*) ;

__attribute__((used)) static struct addrinfo *checkaddr(lua_State *L) {
    struct addrinfo *addr = luaL_checkudata(L, -1, "wrk.addr");
    luaL_argcheck(L, addr != ((void*)0), 1, "`addr' expected");
    return addr;
}
