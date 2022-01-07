
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Table ;
struct TYPE_6__ {scalar_t__ tt; } ;
struct TYPE_7__ {TYPE_1__ tsv; } ;
typedef int TValue ;
typedef TYPE_2__ TString ;
typedef int Node ;


 scalar_t__ LUA_TSHRSTR ;
 scalar_t__ eqshrstr (int ,TYPE_2__*) ;
 int gkey (int *) ;
 int * gnext (int *) ;
 int const* gval (int *) ;
 int * hashstr (int *,TYPE_2__*) ;
 int const* luaO_nilobject ;
 int lua_assert (int) ;
 int rawtsvalue (int ) ;
 scalar_t__ ttisshrstring (int ) ;

const TValue *luaH_getstr (Table *t, TString *key) {
  Node *n = hashstr(t, key);
  lua_assert(key->tsv.tt == LUA_TSHRSTR);
  do {
    if (ttisshrstring(gkey(n)) && eqshrstr(rawtsvalue(gkey(n)), key))
      return gval(n);
    else n = gnext(n);
  } while (n);
  return luaO_nilobject;
}
