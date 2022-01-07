
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int sizehash; } ;
typedef int lua_State ;


 struct table* get_table (int *,int) ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int
lhashlen(lua_State *L) {
 struct table *tbl = get_table(L,1);
 lua_pushinteger(L, tbl->sizehash);
 return 1;
}
