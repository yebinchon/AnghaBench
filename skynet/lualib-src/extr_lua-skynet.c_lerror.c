
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
typedef int lua_State ;
typedef int luaL_Buffer ;


 int luaL_addchar (int *,char) ;
 int luaL_addvalue (int *) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_pushresult (int *) ;
 char* luaL_tolstring (int *,int,int *) ;
 int lua_gettop (int *) ;
 int lua_settop (int *,int) ;
 char const* lua_tostring (int *,int) ;
 struct skynet_context* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int skynet_error (struct skynet_context*,char*,char const*) ;

__attribute__((used)) static int
lerror(lua_State *L) {
 struct skynet_context * context = lua_touserdata(L, lua_upvalueindex(1));
 int n = lua_gettop(L);
 if (n <= 1) {
  lua_settop(L, 1);
  const char * s = luaL_tolstring(L, 1, ((void*)0));
  skynet_error(context, "%s", s);
  return 0;
 }
 luaL_Buffer b;
 luaL_buffinit(L, &b);
 int i;
 for (i=1; i<=n; i++) {
  luaL_tolstring(L, i, ((void*)0));
  luaL_addvalue(&b);
  if (i<n) {
   luaL_addchar(&b, ' ');
  }
 }
 luaL_pushresult(&b);
 skynet_error(context, "%s", lua_tostring(L, -1));
 return 0;
}
