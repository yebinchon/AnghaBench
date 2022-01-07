
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int auxresume (int *,int *,scalar_t__) ;
 int * getco (int *) ;
 scalar_t__ lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 int lua_pushboolean (int *,int) ;

__attribute__((used)) static int luaB_coresume (lua_State *L) {
  lua_State *co = getco(L);
  int r;
  r = auxresume(L, co, lua_gettop(L) - 1);
  if (r < 0) {
    lua_pushboolean(L, 0);
    lua_insert(L, -2);
    return 2;
  }
  else {
    lua_pushboolean(L, 1);
    lua_insert(L, -(r + 1));
    return r + 1;
  }
}
