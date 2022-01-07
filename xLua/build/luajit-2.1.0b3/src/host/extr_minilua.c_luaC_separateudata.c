
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_14__ {TYPE_4__* tmudata; TYPE_1__* mainthread; } ;
typedef TYPE_3__ global_State ;
struct TYPE_16__ {int metatable; } ;
struct TYPE_13__ {TYPE_4__* next; } ;
struct TYPE_15__ {TYPE_2__ gch; } ;
struct TYPE_12__ {TYPE_4__* next; } ;
typedef TYPE_4__ GCObject ;


 TYPE_3__* G (int *) ;
 int TM_GC ;
 int * fasttm (int *,int ,int ) ;
 TYPE_5__* gco2u (TYPE_4__*) ;
 scalar_t__ isfinalized (TYPE_5__*) ;
 scalar_t__ iswhite (TYPE_4__*) ;
 int markfinalized (TYPE_5__*) ;
 scalar_t__ sizeudata (TYPE_5__*) ;

__attribute__((used)) static size_t luaC_separateudata(lua_State*L,int all){
global_State*g=G(L);
size_t deadmem=0;
GCObject**p=&g->mainthread->next;
GCObject*curr;
while((curr=*p)!=((void*)0)){
if(!(iswhite(curr)||all)||isfinalized(gco2u(curr)))
p=&curr->gch.next;
else if(fasttm(L,gco2u(curr)->metatable,TM_GC)==((void*)0)){
markfinalized(gco2u(curr));
p=&curr->gch.next;
}
else{
deadmem+=sizeudata(gco2u(curr));
markfinalized(gco2u(curr));
*p=curr->gch.next;
if(g->tmudata==((void*)0))
g->tmudata=curr->gch.next=curr;
else{
curr->gch.next=g->tmudata->gch.next;
g->tmudata->gch.next=curr;
g->tmudata=curr;
}
}
}
return deadmem;
}
