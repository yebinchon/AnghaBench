
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_copy {int sz; int msg; } ;
struct boxreader {struct stm_copy* lastcopy; int obj; } ;
typedef int lua_State ;


 int LUA_MULTRET ;
 int LUA_TFUNCTION ;
 int luaL_checktype (int *,int,int ) ;
 int lua_call (int *,int,int ) ;
 int lua_gettop (int *) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_replace (int *,int) ;
 int lua_settop (int *,int) ;
 struct boxreader* lua_touserdata (int *,int) ;
 struct stm_copy* stm_copy (int ) ;
 int stm_releasecopy (struct stm_copy*) ;

__attribute__((used)) static int
lread(lua_State *L) {
 struct boxreader * box = lua_touserdata(L, 1);
 luaL_checktype(L, 2, LUA_TFUNCTION);

 struct stm_copy * copy = stm_copy(box->obj);
 if (copy == box->lastcopy) {

  stm_releasecopy(copy);
  lua_pushboolean(L, 0);
  return 1;
 }

 stm_releasecopy(box->lastcopy);
 box->lastcopy = copy;
 if (copy) {
  lua_settop(L, 3);
  lua_replace(L, 1);
  lua_settop(L, 2);
  lua_pushlightuserdata(L, copy->msg);
  lua_pushinteger(L, copy->sz);
  lua_pushvalue(L, 1);
  lua_call(L, 3, LUA_MULTRET);
  lua_pushboolean(L, 1);
  lua_replace(L, 1);
  return lua_gettop(L);
 } else {
  lua_pushboolean(L, 0);
  return 1;
 }
}
