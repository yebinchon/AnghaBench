
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ maxslot; int pc; } ;
typedef TYPE_1__ jit_State ;
typedef int LoopEvent ;
typedef scalar_t__ BCReg ;


 int LOOPEV_ENTER ;

__attribute__((used)) static LoopEvent rec_loop(jit_State *J, BCReg ra)
{
  if (ra < J->maxslot) J->maxslot = ra;
  J->pc++;
  return LOOPEV_ENTER;
}
