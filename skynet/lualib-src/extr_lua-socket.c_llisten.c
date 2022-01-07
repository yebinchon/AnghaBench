
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
typedef int lua_State ;


 int BACKLOG ;
 int luaL_checkinteger (int *,int) ;
 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*) ;
 int luaL_optinteger (int *,int,int ) ;
 int lua_pushinteger (int *,int) ;
 struct skynet_context* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int skynet_socket_listen (struct skynet_context*,char const*,int,int) ;

__attribute__((used)) static int
llisten(lua_State *L) {
 const char * host = luaL_checkstring(L,1);
 int port = luaL_checkinteger(L,2);
 int backlog = luaL_optinteger(L,3,BACKLOG);
 struct skynet_context * ctx = lua_touserdata(L, lua_upvalueindex(1));
 int id = skynet_socket_listen(ctx, host,port,backlog);
 if (id < 0) {
  return luaL_error(L, "Listen error");
 }

 lua_pushinteger(L,id);
 return 1;
}
