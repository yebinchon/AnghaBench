
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;


 int SPACECHARS ;
 scalar_t__ isalnum (unsigned char) ;
 scalar_t__ isdigit (unsigned char) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkany (int *,int) ;
 int luaL_checkint (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ lua_isnoneornil (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int) ;
 int lua_tonumberx (int *,int,int*) ;
 int strspn (char const*,int ) ;
 char toupper (unsigned char) ;

__attribute__((used)) static int luaB_tonumber (lua_State *L) {
  if (lua_isnoneornil(L, 2)) {
    int isnum;
    lua_Number n = lua_tonumberx(L, 1, &isnum);
    if (isnum) {
      lua_pushnumber(L, n);
      return 1;
    }
    luaL_checkany(L, 1);
  }
  else {
    size_t l;
    const char *s = luaL_checklstring(L, 1, &l);
    const char *e = s + l;
    int base = luaL_checkint(L, 2);
    int neg = 0;
    luaL_argcheck(L, 2 <= base && base <= 36, 2, "base out of range");
    s += strspn(s, SPACECHARS);
    if (*s == '-') { s++; neg = 1; }
    else if (*s == '+') s++;
    if (isalnum((unsigned char)*s)) {
      lua_Number n = 0;
      do {
        int digit = (isdigit((unsigned char)*s)) ? *s - '0'
                       : toupper((unsigned char)*s) - 'A' + 10;
        if (digit >= base) break;
        n = n * (lua_Number)base + (lua_Number)digit;
        s++;
      } while (isalnum((unsigned char)*s));
      s += strspn(s, SPACECHARS);
      if (s == e) {
        lua_pushnumber(L, (neg) ? -n : n);
        return 1;
      }
    }
  }
  lua_pushnil(L);
  return 1;
}
