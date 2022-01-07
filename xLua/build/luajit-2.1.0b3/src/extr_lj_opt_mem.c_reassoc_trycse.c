
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* chain; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_6__ {scalar_t__ op1; scalar_t__ op2; scalar_t__ prev; } ;
typedef scalar_t__ IRRef ;
typedef size_t IROp ;
typedef TYPE_2__ IRIns ;


 TYPE_2__* IR (scalar_t__) ;

__attribute__((used)) static IRRef reassoc_trycse(jit_State *J, IROp op, IRRef op1, IRRef op2)
{
  IRRef ref = J->chain[op];
  IRRef lim = op1;
  if (op2 > lim) { lim = op2; op2 = op1; op1 = lim; }
  while (ref > lim) {
    IRIns *ir = IR(ref);
    if (ir->op1 == op1 && ir->op2 == op2)
      return ref;
    ref = ir->prev;
  }
  return 0;
}
