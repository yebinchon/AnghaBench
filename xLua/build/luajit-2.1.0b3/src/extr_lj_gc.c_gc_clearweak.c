
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int marked; scalar_t__ asize; scalar_t__ hmask; int gclist; int node; } ;
struct TYPE_6__ {int val; int key; } ;
typedef int TValue ;
typedef TYPE_1__ Node ;
typedef scalar_t__ MSize ;
typedef TYPE_2__ GCtab ;
typedef int GCobj ;


 int LJ_GC_WEAK ;
 int LJ_GC_WEAKVAL ;
 int * arrayslot (TYPE_2__*,scalar_t__) ;
 scalar_t__ gc_mayclear (int *,int) ;
 TYPE_2__* gco2tab (int *) ;
 int * gcref (int ) ;
 int lua_assert (int) ;
 TYPE_1__* noderef (int ) ;
 int setnilV (int *) ;
 int tvisnil (int *) ;

__attribute__((used)) static void gc_clearweak(GCobj *o)
{
  while (o) {
    GCtab *t = gco2tab(o);
    lua_assert((t->marked & LJ_GC_WEAK));
    if ((t->marked & LJ_GC_WEAKVAL)) {
      MSize i, asize = t->asize;
      for (i = 0; i < asize; i++) {

 TValue *tv = arrayslot(t, i);
 if (gc_mayclear(tv, 1))
   setnilV(tv);
      }
    }
    if (t->hmask > 0) {
      Node *node = noderef(t->node);
      MSize i, hmask = t->hmask;
      for (i = 0; i <= hmask; i++) {
 Node *n = &node[i];

 if (!tvisnil(&n->val) && (gc_mayclear(&n->key, 0) ||
      gc_mayclear(&n->val, 1)))
   setnilV(&n->val);
      }
    }
    o = gcref(t->gclist);
  }
}
