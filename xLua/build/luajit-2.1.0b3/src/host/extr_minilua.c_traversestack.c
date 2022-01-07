
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ top; scalar_t__ stack; TYPE_2__* ci; TYPE_2__* base_ci; } ;
typedef TYPE_1__ lua_State ;
typedef int global_State ;
struct TYPE_7__ {scalar_t__ top; } ;
typedef scalar_t__ StkId ;
typedef TYPE_2__ CallInfo ;


 int checkstacksizes (TYPE_1__*,scalar_t__) ;
 scalar_t__ gt (TYPE_1__*) ;
 int markvalue (int *,scalar_t__) ;
 int setnilvalue (scalar_t__) ;

__attribute__((used)) static void traversestack(global_State*g,lua_State*l){
StkId o,lim;
CallInfo*ci;
markvalue(g,gt(l));
lim=l->top;
for(ci=l->base_ci;ci<=l->ci;ci++){
if(lim<ci->top)lim=ci->top;
}
for(o=l->stack;o<l->top;o++)
markvalue(g,o);
for(;o<=lim;o++)
setnilvalue(o);
checkstacksizes(l,lim);
}
