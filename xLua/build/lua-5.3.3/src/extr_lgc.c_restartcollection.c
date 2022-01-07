
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int l_registry; int mainthread; int * ephemeron; int allweak; int weak; int * grayagain; int gray; } ;
typedef TYPE_1__ global_State ;


 int markbeingfnz (TYPE_1__*) ;
 int markmt (TYPE_1__*) ;
 int markobject (TYPE_1__*,int ) ;
 int markvalue (TYPE_1__*,int *) ;

__attribute__((used)) static void restartcollection (global_State *g) {
  g->gray = g->grayagain = ((void*)0);
  g->weak = g->allweak = g->ephemeron = ((void*)0);
  markobject(g, g->mainthread);
  markvalue(g, &g->l_registry);
  markmt(g);
  markbeingfnz(g);
}
