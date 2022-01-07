
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int dummy; } ;
struct ctrl {struct table* update; struct table* root; } ;
typedef int lua_State ;


 int LUA_TLIGHTUSERDATA ;
 int LUA_TTABLE ;
 int LUA_TUSERDATA ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 int lua_settop (int *,int) ;
 int lua_setuservalue (int *,int) ;
 void* lua_touserdata (int *,int) ;

__attribute__((used)) static int
lupdate(lua_State *L) {
 luaL_checktype(L, 1, LUA_TUSERDATA);
 luaL_checktype(L, 2, LUA_TLIGHTUSERDATA);
 luaL_checktype(L, 3, LUA_TTABLE);
 struct ctrl * c= lua_touserdata(L, 1);
 struct table *n = lua_touserdata(L, 2);
 if (c->root == n) {
  return luaL_error(L, "You should update a new object");
 }
 lua_settop(L, 3);
 lua_setuservalue(L, 1);
 c->update = n;

 return 0;
}
