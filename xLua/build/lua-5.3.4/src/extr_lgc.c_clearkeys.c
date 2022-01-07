
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int global_State ;
struct TYPE_5__ {int * gclist; } ;
typedef TYPE_1__ Table ;
typedef int Node ;
typedef int GCObject ;


 TYPE_1__* gco2t (int *) ;
 int gkey (int *) ;
 int * gnode (TYPE_1__*,int ) ;
 int * gnodelast (TYPE_1__*) ;
 int gval (int *) ;
 scalar_t__ iscleared (int *,int ) ;
 int removeentry (int *) ;
 int setnilvalue (int ) ;
 scalar_t__ ttisnil (int ) ;

__attribute__((used)) static void clearkeys (global_State *g, GCObject *l, GCObject *f) {
  for (; l != f; l = gco2t(l)->gclist) {
    Table *h = gco2t(l);
    Node *n, *limit = gnodelast(h);
    for (n = gnode(h, 0); n < limit; n++) {
      if (!ttisnil(gval(n)) && (iscleared(g, gkey(n)))) {
        setnilvalue(gval(n));
      }
   if (ttisnil(gval(n)))
     removeentry(n);
    }
  }
}
