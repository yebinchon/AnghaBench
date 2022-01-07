
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Table ;
struct TYPE_5__ {scalar_t__ tt; } ;
typedef int TValue ;
typedef TYPE_1__ TString ;
typedef int Node ;


 scalar_t__ LUA_TSHRSTR ;
 scalar_t__ eqshrstr (int ,TYPE_1__*) ;
 int * gkey (int *) ;
 int gnext (int *) ;
 int const* gval (int *) ;
 int * hashstr (int *,TYPE_1__*) ;
 int const* luaO_nilobject ;
 int lua_assert (int) ;
 int tsvalue (int const*) ;
 scalar_t__ ttisshrstring (int const*) ;

const TValue *luaH_getshortstr (Table *t, TString *key) {
  Node *n = hashstr(t, key);
  lua_assert(key->tt == LUA_TSHRSTR);
  for (;;) {
    const TValue *k = gkey(n);
    if (ttisshrstring(k) && eqshrstr(tsvalue(k), key))
      return gval(n);
    else {
      int nx = gnext(n);
      if (nx == 0)
        return luaO_nilobject;
      n += nx;
    }
  }
}
