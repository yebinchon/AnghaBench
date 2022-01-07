
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;


 int REDIS_LRAND48_MAX ;
 int floor (int) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkint (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_pushnumber (int *,int) ;
 int redisLrand48 () ;

int redis_math_random (lua_State *L) {


  lua_Number r = (lua_Number)(redisLrand48()%REDIS_LRAND48_MAX) /
                                (lua_Number)REDIS_LRAND48_MAX;
  switch (lua_gettop(L)) {
    case 0: {
      lua_pushnumber(L, r);
      break;
    }
    case 1: {
      int u = luaL_checkint(L, 1);
      luaL_argcheck(L, 1<=u, 1, "interval is empty");
      lua_pushnumber(L, floor(r*u)+1);
      break;
    }
    case 2: {
      int l = luaL_checkint(L, 1);
      int u = luaL_checkint(L, 2);
      luaL_argcheck(L, l<=u, 2, "interval is empty");
      lua_pushnumber(L, floor(r*(u-l+1))+l);
      break;
    }
    default: return luaL_error(L, "wrong number of arguments");
  }
  return 1;
}
