
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * ephemeron; } ;
typedef TYPE_1__ global_State ;
struct TYPE_8__ {int * gclist; } ;
typedef int GCObject ;


 TYPE_3__* gco2t (int *) ;
 int propagateall (TYPE_1__*) ;
 scalar_t__ traverseephemeron (TYPE_1__*,TYPE_3__*) ;

__attribute__((used)) static void convergeephemerons (global_State *g) {
  int changed;
  do {
    GCObject *w;
    GCObject *next = g->ephemeron;
    g->ephemeron = ((void*)0);
    changed = 0;
    while ((w = next) != ((void*)0)) {
      next = gco2t(w)->gclist;
      if (traverseephemeron(g, gco2t(w))) {
        propagateall(g);
        changed = 1;
      }
    }
  } while (changed);
}
