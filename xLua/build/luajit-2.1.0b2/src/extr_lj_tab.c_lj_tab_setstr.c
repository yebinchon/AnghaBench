
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {int val; int key; } ;
typedef int TValue ;
typedef TYPE_1__ Node ;
typedef int GCtab ;
typedef int GCstr ;


 TYPE_1__* hashstr (int *,int *) ;
 int * lj_tab_newkey (int *,int *,int *) ;
 TYPE_1__* nextnode (TYPE_1__*) ;
 int setstrV (int *,int *,int *) ;
 int * strV (int *) ;
 scalar_t__ tvisstr (int *) ;

TValue *lj_tab_setstr(lua_State *L, GCtab *t, GCstr *key)
{
  TValue k;
  Node *n = hashstr(t, key);
  do {
    if (tvisstr(&n->key) && strV(&n->key) == key)
      return &n->val;
  } while ((n = nextnode(n)));
  setstrV(L, &k, key);
  return lj_tab_newkey(L, t, &k);
}
