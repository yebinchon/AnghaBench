
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {scalar_t__ string_index; } ;
typedef int lua_State ;


 int LUA_OK ;
 int convtable ;
 int luaL_checkstack (int *,scalar_t__,int *) ;
 int lua_error (int *) ;
 int lua_newtable (int *) ;
 int lua_pcall (int *,int,int ,int ) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushlightuserdata (int *,struct context*) ;
 int lua_pushlstring (int *,char const*,size_t) ;
 int lua_pushvalue (int *,int) ;
 int lua_settop (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 void* lua_touserdata (int *,int) ;

__attribute__((used)) static int
pconv(lua_State *L) {
 struct context *ctx = lua_touserdata(L,1);
 lua_State * pL = lua_touserdata(L, 2);
 int ret;

 lua_settop(L, 0);



 lua_newtable(L);

 lua_pushcfunction(pL, convtable);
 lua_pushvalue(pL,1);
 lua_pushlightuserdata(pL, ctx);

 ret = lua_pcall(pL, 2, 0, 0);
 if (ret != LUA_OK) {
  size_t sz = 0;
  const char * error = lua_tolstring(pL, -1, &sz);
  lua_pushlstring(L, error, sz);
  lua_error(L);

 }

 luaL_checkstack(L, ctx->string_index + 3, ((void*)0));
 lua_settop(L,1);

 return 1;
}
