
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Integer ;
typedef int Table ;
typedef int TValue ;






 int const* getgeneric (int *,int const*) ;
 int ivalue (int const*) ;
 int const* luaH_getint (int *,int ) ;
 int const* luaH_getshortstr (int *,int ) ;
 int const* luaO_nilobject ;
 int luaV_tointeger (int const*,int *,int ) ;
 int tsvalue (int const*) ;
 int ttype (int const*) ;

const TValue *luaH_get (Table *t, const TValue *key) {
  switch (ttype(key)) {
    case 128: return luaH_getshortstr(t, tsvalue(key));
    case 129: return luaH_getint(t, ivalue(key));
    case 131: return luaO_nilobject;
    case 130: {
      lua_Integer k;
      if (luaV_tointeger(key, &k, 0))
        return luaH_getint(t, k);

    }
    default:
      return getgeneric(t, key);
  }
}
