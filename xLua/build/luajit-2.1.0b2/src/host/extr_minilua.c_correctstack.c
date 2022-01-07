
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * stack; int * base; TYPE_4__* ci; TYPE_4__* base_ci; TYPE_3__* openupval; int * top; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_12__ {int * v; } ;
struct TYPE_11__ {int * func; int * base; int * top; } ;
struct TYPE_8__ {TYPE_3__* next; } ;
struct TYPE_10__ {TYPE_1__ gch; } ;
typedef int TValue ;
typedef TYPE_3__ GCObject ;
typedef TYPE_4__ CallInfo ;


 TYPE_5__* gco2uv (TYPE_3__*) ;

__attribute__((used)) static void correctstack(lua_State*L,TValue*oldstack){
CallInfo*ci;
GCObject*up;
L->top=(L->top-oldstack)+L->stack;
for(up=L->openupval;up!=((void*)0);up=up->gch.next)
gco2uv(up)->v=(gco2uv(up)->v-oldstack)+L->stack;
for(ci=L->base_ci;ci<=L->ci;ci++){
ci->top=(ci->top-oldstack)+L->stack;
ci->base=(ci->base-oldstack)+L->stack;
ci->func=(ci->func-oldstack)+L->stack;
}
L->base=(L->base-oldstack)+L->stack;
}
