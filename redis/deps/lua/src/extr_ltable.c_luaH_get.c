
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
typedef int Table ;
typedef int TValue ;
typedef int Node ;





 int cast_num (int) ;
 int * gnext (int *) ;
 int const* gval (int *) ;
 int key2tval (int *) ;
 int const* luaH_getnum (int *,int) ;
 int const* luaH_getstr (int *,int ) ;
 int const* luaO_nilobject ;
 int luaO_rawequalObj (int ,int const*) ;
 int lua_number2int (int,int ) ;
 int luai_numeq (int ,int ) ;
 int * mainposition (int *,int const*) ;
 int nvalue (int const*) ;
 int rawtsvalue (int const*) ;
 int ttype (int const*) ;

const TValue *luaH_get (Table *t, const TValue *key) {
  switch (ttype(key)) {
    case 130: return luaO_nilobject;
    case 128: return luaH_getstr(t, rawtsvalue(key));
    case 129: {
      int k;
      lua_Number n = nvalue(key);
      lua_number2int(k, n);
      if (luai_numeq(cast_num(k), nvalue(key)))
        return luaH_getnum(t, k);

    }
    default: {
      Node *n = mainposition(t, key);
      do {
        if (luaO_rawequalObj(key2tval(n), key))
          return gval(n);
        else n = gnext(n);
      } while (n);
      return luaO_nilobject;
    }
  }
}
