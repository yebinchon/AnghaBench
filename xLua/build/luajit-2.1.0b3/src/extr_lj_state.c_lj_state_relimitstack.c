
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ stacksize; int top; int stack; } ;
typedef TYPE_1__ lua_State ;


 int LJ_STACK_MAX ;
 scalar_t__ LJ_STACK_MAXEX ;
 int resizestack (TYPE_1__*,int) ;
 int tvref (int ) ;

void lj_state_relimitstack(lua_State *L)
{
  if (L->stacksize > LJ_STACK_MAXEX && L->top-tvref(L->stack) < LJ_STACK_MAX-1)
    resizestack(L, LJ_STACK_MAX);
}
