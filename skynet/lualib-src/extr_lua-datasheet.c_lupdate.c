
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proxy {int data; } ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int LUA_TLIGHTUSERDATA ;
 scalar_t__ LUA_TUSERDATA ;
 int PROXYCACHE ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*,int ) ;
 int lua_getfield (int *,int ,int ) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ lua_rawget (int *,int) ;
 int lua_topointer (int *,int) ;
 void* lua_touserdata (int *,int) ;
 int update_cache (int *,int ,char const*) ;

__attribute__((used)) static int
lupdate(lua_State *L) {
 lua_getfield(L, LUA_REGISTRYINDEX, PROXYCACHE);
 lua_pushvalue(L, 1);

 if (lua_rawget(L, -2) != LUA_TUSERDATA) {
  luaL_error(L, "Invalid proxy table %p", lua_topointer(L, 1));
 }
 struct proxy * p = lua_touserdata(L, -1);
 luaL_checktype(L, 2, LUA_TLIGHTUSERDATA);
 const char * newdata = lua_touserdata(L, 2);
 update_cache(L, p->data, newdata);
 return 1;
}
