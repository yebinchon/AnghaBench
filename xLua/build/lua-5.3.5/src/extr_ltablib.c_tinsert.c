
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 int TAB_RW ;
 int aux_getn (int *,int,int ) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_geti (int *,int,int ) ;
 int lua_gettop (int *) ;
 int lua_seti (int *,int,int) ;

__attribute__((used)) static int tinsert (lua_State *L) {
  lua_Integer e = aux_getn(L, 1, TAB_RW) + 1;
  lua_Integer pos;
  switch (lua_gettop(L)) {
    case 2: {
      pos = e;
      break;
    }
    case 3: {
      lua_Integer i;
      pos = luaL_checkinteger(L, 2);
      luaL_argcheck(L, 1 <= pos && pos <= e, 2, "position out of bounds");
      for (i = e; i > pos; i--) {
        lua_geti(L, 1, i - 1);
        lua_seti(L, 1, i);
      }
      break;
    }
    default: {
      return luaL_error(L, "wrong number of arguments to 'insert'");
    }
  }
  lua_seti(L, 1, pos);
  return 0;
}
