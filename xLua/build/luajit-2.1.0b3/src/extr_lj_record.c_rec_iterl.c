
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int maxslot; int * pc; int * base; } ;
typedef TYPE_1__ jit_State ;
typedef int LoopEvent ;
typedef int BCReg ;
typedef int BCIns ;


 int LOOPEV_ENTER ;
 int LOOPEV_LEAVE ;
 int bc_a (int const) ;
 int bc_b (int ) ;
 scalar_t__ bc_j (int const) ;
 int getslot (TYPE_1__*,int) ;
 int tref_isnil (int ) ;

__attribute__((used)) static LoopEvent rec_iterl(jit_State *J, const BCIns iterins)
{
  BCReg ra = bc_a(iterins);
  if (!tref_isnil(getslot(J, ra))) {
    J->base[ra-1] = J->base[ra];
    J->maxslot = ra-1+bc_b(J->pc[-1]);
    J->pc += bc_j(iterins)+1;
    return LOOPEV_ENTER;
  } else {
    J->maxslot = ra-3;
    J->pc++;
    return LOOPEV_LEAVE;
  }
}
