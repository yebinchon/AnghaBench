
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
typedef int lua_State ;


 char* address_port (int *,char*,char const*,int,int*) ;
 int luaL_checkinteger (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 struct skynet_context* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 scalar_t__ skynet_socket_udp_connect (struct skynet_context*,int,char const*,int) ;

__attribute__((used)) static int
ludp_connect(lua_State *L) {
 struct skynet_context * ctx = lua_touserdata(L, lua_upvalueindex(1));
 int id = luaL_checkinteger(L, 1);
 size_t sz = 0;
 const char * addr = luaL_checklstring(L,2,&sz);
 char tmp[sz];
 int port = 0;
 const char * host = ((void*)0);
 if (addr) {
  host = address_port(L, tmp, addr, 3, &port);
 }

 if (skynet_socket_udp_connect(ctx, id, host, port)) {
  return luaL_error(L, "udp connect failed");
 }

 return 0;
}
