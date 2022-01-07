
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mmudata; } ;
struct TYPE_7__ {TYPE_1__ gc; } ;
typedef TYPE_2__ global_State ;
typedef int GCobj ;


 int gc_mark (TYPE_2__*,int *) ;
 int * gcnext (int *) ;
 int * gcref (int ) ;
 int makewhite (TYPE_2__*,int *) ;

__attribute__((used)) static void gc_mark_mmudata(global_State *g)
{
  GCobj *root = gcref(g->gc.mmudata);
  GCobj *u = root;
  if (u) {
    do {
      u = gcnext(u);
      makewhite(g, u);
      gc_mark(g, u);
    } while (u != root);
  }
}
