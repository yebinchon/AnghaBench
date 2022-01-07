
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_OK ;
 int lua_insert (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_setupvalue (int *,int,int) ;

__attribute__((used)) static int load_aux (lua_State *L, int status, int envidx) {
  if (status == LUA_OK) {
    if (envidx != 0) {
      lua_pushvalue(L, envidx);
      if (!lua_setupvalue(L, -2, 1))
        lua_pop(L, 1);
    }
    return 1;
  }
  else {
    lua_pushnil(L);
    lua_insert(L, -2);
    return 2;
  }
}
