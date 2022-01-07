
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_9__ {int gcstate; scalar_t__ totalbytes; scalar_t__ estimate; int rootgc; int * sweepgc; scalar_t__ sweepstrgc; int currentwhite; int * weak; int * grayagain; int * gray; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int cast_byte (int ) ;
 int cleartable (int *) ;
 size_t luaC_separateudata (int *,int ) ;
 int markmt (TYPE_1__*) ;
 int markobject (TYPE_1__*,int *) ;
 int marktmu (TYPE_1__*) ;
 int otherwhite (TYPE_1__*) ;
 scalar_t__ propagateall (TYPE_1__*) ;
 int remarkupvals (TYPE_1__*) ;

__attribute__((used)) static void atomic(lua_State*L){
global_State*g=G(L);
size_t udsize;
remarkupvals(g);
propagateall(g);
g->gray=g->weak;
g->weak=((void*)0);
markobject(g,L);
markmt(g);
propagateall(g);
g->gray=g->grayagain;
g->grayagain=((void*)0);
propagateall(g);
udsize=luaC_separateudata(L,0);
marktmu(g);
udsize+=propagateall(g);
cleartable(g->weak);
g->currentwhite=cast_byte(otherwhite(g));
g->sweepstrgc=0;
g->sweepgc=&g->rootgc;
g->gcstate=2;
g->estimate=g->totalbytes-udsize;
}
