
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int stacksize; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_8__ {int cur_L; int jit_base; } ;
typedef int MSize ;


 TYPE_5__* G (TYPE_1__*) ;
 int LJ_STACK_EXTRA ;
 int LJ_STACK_MAXEX ;
 int LJ_STACK_START ;
 scalar_t__ gcref (int ) ;
 scalar_t__ obj2gco (TYPE_1__*) ;
 int resizestack (TYPE_1__*,int) ;
 int * tvref (int ) ;

void lj_state_shrinkstack(lua_State *L, MSize used)
{
  if (L->stacksize > LJ_STACK_MAXEX)
    return;
  if (4*used < L->stacksize &&
      2*(LJ_STACK_START+LJ_STACK_EXTRA) < L->stacksize &&

      (tvref(G(L)->jit_base) == ((void*)0) || obj2gco(L) != gcref(G(L)->cur_L)))
    resizestack(L, L->stacksize >> 1);
}
