
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Table ;
typedef int TValue ;
typedef int TString ;
typedef int Node ;


 int gkey (int *) ;
 int * gnext (int *) ;
 int const* gval (int *) ;
 int * hashstr (int *,int *) ;
 int const* luaO_nilobject ;
 int * rawtsvalue (int ) ;
 scalar_t__ ttisstring (int ) ;

const TValue *luaH_getstr (Table *t, TString *key) {
  Node *n = hashstr(t, key);
  do {
    if (ttisstring(gkey(n)) && rawtsvalue(gkey(n)) == key)
      return gval(n);
    else n = gnext(n);
  } while (n);
  return luaO_nilobject;
}
