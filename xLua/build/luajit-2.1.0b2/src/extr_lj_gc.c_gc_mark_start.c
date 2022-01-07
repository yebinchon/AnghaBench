
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int state; int weak; int grayagain; int gray; } ;
struct TYPE_12__ {TYPE_1__ gc; int registrytv; } ;
typedef TYPE_2__ global_State ;
struct TYPE_13__ {int env; } ;


 int GCSpropagate ;
 int gc_mark_gcroot (TYPE_2__*) ;
 int gc_markobj (TYPE_2__*,TYPE_3__*) ;
 int gc_marktv (TYPE_2__*,int *) ;
 TYPE_3__* mainthread (TYPE_2__*) ;
 int setgcrefnull (int ) ;
 TYPE_3__* tabref (int ) ;

__attribute__((used)) static void gc_mark_start(global_State *g)
{
  setgcrefnull(g->gc.gray);
  setgcrefnull(g->gc.grayagain);
  setgcrefnull(g->gc.weak);
  gc_markobj(g, mainthread(g));
  gc_markobj(g, tabref(mainthread(g)->env));
  gc_marktv(g, &g->registrytv);
  gc_mark_gcroot(g);
  g->gc.state = GCSpropagate;
}
