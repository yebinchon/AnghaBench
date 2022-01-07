
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;
typedef scalar_t__ lua_Integer ;


 scalar_t__ LUA_MAXINTEGER ;
 scalar_t__ L_RANDMAX ;
 scalar_t__ l_rand () ;
 int luaL_argcheck (int *,int,int,char*) ;
 scalar_t__ luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_pushinteger (int *,scalar_t__) ;
 int lua_pushnumber (int *,int ) ;

__attribute__((used)) static int math_random (lua_State *L) {
  lua_Integer low, up;
  double r = (double)l_rand() * (1.0 / ((double)L_RANDMAX + 1.0));
  switch (lua_gettop(L)) {
    case 0: {
      lua_pushnumber(L, (lua_Number)r);
      return 1;
    }
    case 1: {
      low = 1;
      up = luaL_checkinteger(L, 1);
      break;
    }
    case 2: {
      low = luaL_checkinteger(L, 1);
      up = luaL_checkinteger(L, 2);
      break;
    }
    default: return luaL_error(L, "wrong number of arguments");
  }

  luaL_argcheck(L, low <= up, 1, "interval is empty");
  luaL_argcheck(L, low >= 0 || up <= LUA_MAXINTEGER + low, 1,
                   "interval too large");
  r *= (double)(up - low) + 1.0;
  lua_pushinteger(L, (lua_Integer)r + low);
  return 1;
}
