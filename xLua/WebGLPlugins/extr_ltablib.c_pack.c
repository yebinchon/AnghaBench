
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_createtable (int *,int,int) ;
 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_seti (int *,int,int) ;

__attribute__((used)) static int pack (lua_State *L) {
  int i;
  int n = lua_gettop(L);
  lua_createtable(L, n, 1);
  lua_insert(L, 1);
  for (i = n; i >= 1; i--)
    lua_seti(L, 1, i);
  lua_pushinteger(L, n);
  lua_setfield(L, 1, "n");
  return 1;
}
