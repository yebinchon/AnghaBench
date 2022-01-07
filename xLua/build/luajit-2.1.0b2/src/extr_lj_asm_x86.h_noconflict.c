
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ curins; TYPE_1__* ir; } ;
struct TYPE_4__ {scalar_t__ o; scalar_t__ op1; scalar_t__ op2; } ;
typedef scalar_t__ IRRef ;
typedef scalar_t__ IROp ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 scalar_t__ CONFLICT_SEARCH_LIM ;

__attribute__((used)) static int noconflict(ASMState *as, IRRef ref, IROp conflict, int noload)
{
  IRIns *ir = as->ir;
  IRRef i = as->curins;
  if (i > ref + CONFLICT_SEARCH_LIM)
    return 0;
  while (--i > ref) {
    if (ir[i].o == conflict)
      return 0;
    else if (!noload && (ir[i].op1 == ref || ir[i].op2 == ref))
      return 0;
  }
  return 1;
}
