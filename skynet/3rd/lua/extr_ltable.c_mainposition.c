
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Table ;
typedef int TValue ;
typedef int Node ;
 int bvalue (int const*) ;
 int fltvalue (int const*) ;
 int fvalue (int const*) ;
 int gcvalue (int const*) ;
 int * hashboolean (int const*,int ) ;
 int * hashint (int const*,int ) ;
 int * hashmod (int const*,int ) ;
 int * hashpointer (int const*,int ) ;
 int * hashpow2 (int const*,int ) ;
 int * hashstr (int const*,int ) ;
 int ivalue (int const*) ;
 int l_hashfloat (int ) ;
 int luaS_hashlongstr (int ) ;
 int lua_assert (int) ;
 int pvalue (int const*) ;
 int tsvalue (int const*) ;
 int ttisdeadkey (int const*) ;
 int ttype (int const*) ;

__attribute__((used)) static Node *mainposition (const Table *t, const TValue *key) {
  switch (ttype(key)) {
    case 129:
      return hashint(t, ivalue(key));
    case 130:
      return hashmod(t, l_hashfloat(fltvalue(key)));
    case 128:
      return hashstr(t, tsvalue(key));
    case 131:
      return hashpow2(t, luaS_hashlongstr(tsvalue(key)));
    case 134:
      return hashboolean(t, bvalue(key));
    case 132:
      return hashpointer(t, pvalue(key));
    case 133:
      return hashpointer(t, fvalue(key));
    default:
      lua_assert(!ttisdeadkey(key));
      return hashpointer(t, gcvalue(key));
  }
}
