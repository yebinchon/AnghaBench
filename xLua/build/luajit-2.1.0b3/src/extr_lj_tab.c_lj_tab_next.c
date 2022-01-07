
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int lua_State ;
struct TYPE_8__ {size_t asize; size_t hmask; int node; } ;
struct TYPE_7__ {int val; int key; } ;
typedef int TValue ;
typedef TYPE_1__ Node ;
typedef TYPE_2__ GCtab ;


 int * arrayslot (TYPE_2__*,size_t) ;
 int copyTV (int *,int *,int *) ;
 size_t keyindex (int *,TYPE_2__*,int *) ;
 TYPE_1__* noderef (int ) ;
 int setintV (int *,size_t) ;
 int tvisnil (int *) ;

int lj_tab_next(lua_State *L, GCtab *t, TValue *key)
{
  uint32_t i = keyindex(L, t, key);
  for (i++; i < t->asize; i++)
    if (!tvisnil(arrayslot(t, i))) {
      setintV(key, i);
      copyTV(L, key+1, arrayslot(t, i));
      return 1;
    }
  for (i -= t->asize; i <= t->hmask; i++) {
    Node *n = &noderef(t->node)[i];
    if (!tvisnil(&n->val)) {
      copyTV(L, key, &n->key);
      copyTV(L, key+1, &n->val);
      return 1;
    }
  }
  return 0;
}
