
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
typedef scalar_t__ lua_Integer ;
typedef int TValue ;


 scalar_t__ LUA_MAXINTEGER ;
 scalar_t__ LUA_MININTEGER ;
 int luaV_tointeger (int const*,scalar_t__*,int) ;
 scalar_t__ luai_numlt (int ,int ) ;
 int tonumber (int const*,int *) ;

__attribute__((used)) static int forlimit (const TValue *obj, lua_Integer *p, lua_Integer step,
                     int *stopnow) {
  *stopnow = 0;
  if (!luaV_tointeger(obj, p, (step < 0 ? 2 : 1))) {
    lua_Number n;
    if (!tonumber(obj, &n))
      return 0;
    if (luai_numlt(0, n)) {
      *p = LUA_MAXINTEGER;
      if (step < 0) *stopnow = 1;
    }
    else {
      *p = LUA_MININTEGER;
      if (step >= 0) *stopnow = 1;
    }
  }
  return 1;
}
