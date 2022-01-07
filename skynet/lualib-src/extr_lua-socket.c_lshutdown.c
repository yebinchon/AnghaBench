
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 struct skynet_context* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int skynet_socket_shutdown (struct skynet_context*,int) ;

__attribute__((used)) static int
lshutdown(lua_State *L) {
 int id = luaL_checkinteger(L,1);
 struct skynet_context * ctx = lua_touserdata(L, lua_upvalueindex(1));
 skynet_socket_shutdown(ctx, id);
 return 0;
}
