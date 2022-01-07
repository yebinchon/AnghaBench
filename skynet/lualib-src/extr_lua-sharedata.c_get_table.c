
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int dummy; } ;
typedef int lua_State ;


 int luaL_error (int *,char*) ;
 struct table* lua_touserdata (int *,int) ;

__attribute__((used)) static struct table *
get_table(lua_State *L, int index) {
 struct table *tbl = lua_touserdata(L,index);
 if (tbl == ((void*)0)) {
  luaL_error(L, "Need a conf object");
 }
 return tbl;
}
