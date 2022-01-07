
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lua_Number ;
typedef int lua_Integer ;
typedef int TValue ;


 scalar_t__ cvt2num (int const*) ;
 scalar_t__ fltvalue (int const*) ;
 int ivalue (int const*) ;
 scalar_t__ l_floor (scalar_t__) ;
 scalar_t__ luaO_str2num (int ,int *) ;
 int lua_numbertointeger (scalar_t__,int *) ;
 int svalue (int const*) ;
 scalar_t__ ttisfloat (int const*) ;
 scalar_t__ ttisinteger (int const*) ;
 scalar_t__ vslen (int const*) ;

int luaV_tointeger (const TValue *obj, lua_Integer *p, int mode) {
  TValue v;
 again:
  if (ttisfloat(obj)) {
    lua_Number n = fltvalue(obj);
    lua_Number f = l_floor(n);
    if (n != f) {
      if (mode == 0) return 0;
      else if (mode > 1)
        f += 1;
    }
    return lua_numbertointeger(f, p);
  }
  else if (ttisinteger(obj)) {
    *p = ivalue(obj);
    return 1;
  }
  else if (cvt2num(obj) &&
            luaO_str2num(svalue(obj), &v) == vslen(obj) + 1) {
    obj = &v;
    goto again;
  }
  return 0;
}
