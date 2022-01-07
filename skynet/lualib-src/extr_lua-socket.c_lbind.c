
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int lua_pushinteger (int *,int) ;
 struct skynet_context* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int skynet_socket_bind (struct skynet_context*,int) ;

__attribute__((used)) static int
lbind(lua_State *L) {
 struct skynet_context * ctx = lua_touserdata(L, lua_upvalueindex(1));
 int fd = luaL_checkinteger(L, 1);
 int id = skynet_socket_bind(ctx,fd);
 lua_pushinteger(L,id);
 return 1;
}
