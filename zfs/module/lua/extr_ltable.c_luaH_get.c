
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
typedef int Table ;
typedef int TValue ;
typedef int Node ;





 int cast_num (int) ;
 int gkey (int *) ;
 int * gnext (int *) ;
 int const* gval (int *) ;
 int const* luaH_getint (int *,int) ;
 int const* luaH_getstr (int *,int ) ;
 int const* luaO_nilobject ;
 int luaV_rawequalobj (int ,int const*) ;
 int lua_number2int (int,int ) ;
 int luai_numeq (int ,int ) ;
 int * mainposition (int *,int const*) ;
 int nvalue (int const*) ;
 int rawtsvalue (int const*) ;
 int ttype (int const*) ;

const TValue *luaH_get (Table *t, const TValue *key) {
  switch (ttype(key)) {
    case 128: return luaH_getstr(t, rawtsvalue(key));
    case 130: return luaO_nilobject;
    case 129: {
      int k;
      lua_Number n = nvalue(key);
      lua_number2int(k, n);
      if (luai_numeq(cast_num(k), n))
        return luaH_getint(t, k);

    }

    default: {
      Node *n = mainposition(t, key);
      do {
        if (luaV_rawequalobj(gkey(n), key))
          return gval(n);
        else n = gnext(n);
      } while (n);
      return luaO_nilobject;
    }
  }
}
