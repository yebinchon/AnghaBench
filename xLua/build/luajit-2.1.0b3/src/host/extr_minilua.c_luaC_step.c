
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int lu_mem ;
typedef int l_mem ;
struct TYPE_4__ {unsigned int gcstepmul; unsigned int gcdept; scalar_t__ gcstate; scalar_t__ totalbytes; scalar_t__ GCthreshold; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int setthreshold (TYPE_1__*) ;
 scalar_t__ singlestep (int *) ;

__attribute__((used)) static void luaC_step(lua_State*L){
global_State*g=G(L);
l_mem lim=(1024u/100)*g->gcstepmul;
if(lim==0)
lim=(((lu_mem)(~(lu_mem)0)-2)-1)/2;
g->gcdept+=g->totalbytes-g->GCthreshold;
do{
lim-=singlestep(L);
if(g->gcstate==0)
break;
}while(lim>0);
if(g->gcstate!=0){
if(g->gcdept<1024u)
g->GCthreshold=g->totalbytes+1024u;
else{
g->gcdept-=1024u;
g->GCthreshold=g->totalbytes;
}
}
else{
setthreshold(g);
}
}
