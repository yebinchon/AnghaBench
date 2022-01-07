
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int LUA_RIDX_MAINTHREAD ;
 int LUA_TFUNCTION ;
 int _cb ;
 int forward_cb ;
 int luaL_checktype (int *,int,int ) ;
 int lua_rawgeti (int *,int ,int ) ;
 int lua_rawsetp (int *,int ,int ) ;
 int lua_settop (int *,int) ;
 int lua_toboolean (int *,int) ;
 int * lua_tothread (int *,int) ;
 struct skynet_context* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int skynet_callback (struct skynet_context*,int *,int ) ;

__attribute__((used)) static int
lcallback(lua_State *L) {
 struct skynet_context * context = lua_touserdata(L, lua_upvalueindex(1));
 int forward = lua_toboolean(L, 2);
 luaL_checktype(L,1,LUA_TFUNCTION);
 lua_settop(L,1);
 lua_rawsetp(L, LUA_REGISTRYINDEX, _cb);

 lua_rawgeti(L, LUA_REGISTRYINDEX, LUA_RIDX_MAINTHREAD);
 lua_State *gL = lua_tothread(L,-1);

 if (forward) {
  skynet_callback(context, gL, forward_cb);
 } else {
  skynet_callback(context, gL, _cb);
 }

 return 0;
}
