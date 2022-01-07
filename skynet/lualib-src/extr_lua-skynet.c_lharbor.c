
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {int dummy; } ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushinteger (int *,int) ;
 struct skynet_context* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int skynet_isremote (struct skynet_context*,int ,int*) ;

__attribute__((used)) static int
lharbor(lua_State *L) {
 struct skynet_context * context = lua_touserdata(L, lua_upvalueindex(1));
 uint32_t handle = (uint32_t)luaL_checkinteger(L,1);
 int harbor = 0;
 int remote = skynet_isremote(context, handle, &harbor);
 lua_pushinteger(L,harbor);
 lua_pushboolean(L, remote);

 return 2;
}
