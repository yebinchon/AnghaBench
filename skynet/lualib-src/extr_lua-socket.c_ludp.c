
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
typedef int lua_State ;


 char* address_port (int *,char*,char const*,int,int*) ;
 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 struct skynet_context* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int skynet_socket_udp (struct skynet_context*,char const*,int) ;

__attribute__((used)) static int
ludp(lua_State *L) {
 struct skynet_context * ctx = lua_touserdata(L, lua_upvalueindex(1));
 size_t sz = 0;
 const char * addr = lua_tolstring(L,1,&sz);
 char tmp[sz];
 int port = 0;
 const char * host = ((void*)0);
 if (addr) {
  host = address_port(L, tmp, addr, 2, &port);
 }

 int id = skynet_socket_udp(ctx, host, port);
 if (id < 0) {
  return luaL_error(L, "udp init failed");
 }
 lua_pushinteger(L, id);
 return 1;
}
