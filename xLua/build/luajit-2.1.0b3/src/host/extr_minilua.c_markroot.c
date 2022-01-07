
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {int gcstate; int mainthread; int * weak; int * grayagain; int * gray; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int gt (int ) ;
 int markmt (TYPE_1__*) ;
 int markobject (TYPE_1__*,int ) ;
 int markvalue (TYPE_1__*,int ) ;
 int registry (int *) ;

__attribute__((used)) static void markroot(lua_State*L){
global_State*g=G(L);
g->gray=((void*)0);
g->grayagain=((void*)0);
g->weak=((void*)0);
markobject(g,g->mainthread);
markvalue(g,gt(g->mainthread));
markvalue(g,registry(L));
markmt(g);
g->gcstate=1;
}
