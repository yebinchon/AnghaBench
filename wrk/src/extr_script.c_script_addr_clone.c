
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int dummy; } ;
typedef int lua_State ;


 int luaL_getmetatable (int *,char*) ;
 struct addrinfo* lua_newuserdata (int *,int) ;
 int lua_setmetatable (int *,int) ;
 int script_addr_copy (struct addrinfo*,struct addrinfo*) ;

struct addrinfo *script_addr_clone(lua_State *L, struct addrinfo *addr) {
    struct addrinfo *udata = lua_newuserdata(L, sizeof(*udata));
    luaL_getmetatable(L, "wrk.addr");
    lua_setmetatable(L, -2);
    script_addr_copy(addr, udata);
    return udata;
}
