
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sproto_type {int dummy; } ;
struct sproto {int dummy; } ;
typedef int lua_State ;


 int luaL_argerror (int *,int,char*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushlightuserdata (int *,struct sproto_type*) ;
 struct sproto* lua_touserdata (int *,int) ;
 struct sproto_type* sproto_type (struct sproto*,char const*) ;

__attribute__((used)) static int
lquerytype(lua_State *L) {
 const char * type_name;
 struct sproto *sp = lua_touserdata(L,1);
 struct sproto_type *st;
 if (sp == ((void*)0)) {
  return luaL_argerror(L, 1, "Need a sproto object");
 }
 type_name = luaL_checkstring(L,2);
 st = sproto_type(sp, type_name);
 if (st) {
  lua_pushlightuserdata(L, st);
  return 1;
 }
 return 0;
}
