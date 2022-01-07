
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int gcr; } ;
typedef TYPE_1__ cTValue ;
typedef int Node ;
typedef int GCtab ;


 int boolV (TYPE_1__*) ;
 int * hashgcref (int const*,int ) ;
 int * hashmask (int const*,int ) ;
 int * hashnum (int const*,TYPE_1__*) ;
 int * hashstr (int const*,int ) ;
 int lua_assert (int) ;
 int strV (TYPE_1__*) ;
 scalar_t__ tvisbool (TYPE_1__*) ;
 int tvisint (TYPE_1__*) ;
 scalar_t__ tvisnum (TYPE_1__*) ;
 scalar_t__ tvisstr (TYPE_1__*) ;

__attribute__((used)) static Node *hashkey(const GCtab *t, cTValue *key)
{
  lua_assert(!tvisint(key));
  if (tvisstr(key))
    return hashstr(t, strV(key));
  else if (tvisnum(key))
    return hashnum(t, key);
  else if (tvisbool(key))
    return hashmask(t, boolV(key));
  else
    return hashgcref(t, key->gcr);

}
