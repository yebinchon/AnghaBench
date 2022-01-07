
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
typedef int lu_mem ;
typedef int l_mem ;
struct TYPE_5__ {int size; int * hash; } ;
struct TYPE_6__ {int gcstate; int totalbytes; int estimate; int gcdept; int tmudata; int ** sweepgc; TYPE_1__ strt; int sweepstrgc; int gray; } ;
typedef TYPE_2__ global_State ;


 TYPE_2__* G (int *) ;
 int GCTM (int *) ;
 int atomic (int *) ;
 int checkSizes (int *) ;
 int markroot (int *) ;
 int propagatemark (TYPE_2__*) ;
 int ** sweeplist (int *,int **,int) ;
 int sweepwholelist (int *,int *) ;

__attribute__((used)) static l_mem singlestep(lua_State*L){
global_State*g=G(L);
switch(g->gcstate){
case 0:{
markroot(L);
return 0;
}
case 1:{
if(g->gray)
return propagatemark(g);
else{
atomic(L);
return 0;
}
}
case 2:{
lu_mem old=g->totalbytes;
sweepwholelist(L,&g->strt.hash[g->sweepstrgc++]);
if(g->sweepstrgc>=g->strt.size)
g->gcstate=3;
g->estimate-=old-g->totalbytes;
return 10;
}
case 3:{
lu_mem old=g->totalbytes;
g->sweepgc=sweeplist(L,g->sweepgc,40);
if(*g->sweepgc==((void*)0)){
checkSizes(L);
g->gcstate=4;
}
g->estimate-=old-g->totalbytes;
return 40*10;
}
case 4:{
if(g->tmudata){
GCTM(L);
if(g->estimate>100)
g->estimate-=100;
return 100;
}
else{
g->gcstate=0;
g->gcdept=0;
return 0;
}
}
default:return 0;
}
}
