
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int size; int * hash; } ;
struct TYPE_5__ {int currentwhite; TYPE_1__ strt; int rootgc; } ;
typedef TYPE_2__ global_State ;


 TYPE_2__* G (int *) ;
 int bit2mask (int ,int) ;
 int bitmask (int) ;
 int sweepwholelist (int *,int *) ;

__attribute__((used)) static void luaC_freeall(lua_State*L){
global_State*g=G(L);
int i;
g->currentwhite=bit2mask(0,1)|bitmask(6);
sweepwholelist(L,&g->rootgc);
for(i=0;i<g->strt.size;i++)
sweepwholelist(L,&g->strt.hash[i]);
}
