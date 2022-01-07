
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
typedef int lua_State ;


 char* address_port (int *,char*,char const*,int,int*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,int) ;
 struct skynet_context* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int skynet_socket_connect (struct skynet_context*,char const*,int) ;

__attribute__((used)) static int
lconnect(lua_State *L) {
 size_t sz = 0;
 const char * addr = luaL_checklstring(L,1,&sz);
 char tmp[sz];
 int port = 0;
 const char * host = address_port(L, tmp, addr, 2, &port);
 if (port == 0) {
  return luaL_error(L, "Invalid port");
 }
 struct skynet_context * ctx = lua_touserdata(L, lua_upvalueindex(1));
 int id = skynet_socket_connect(ctx, host, port);
 lua_pushinteger(L, id);

 return 1;
}
