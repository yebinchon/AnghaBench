
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ curins; scalar_t__ loopref; } ;
struct TYPE_6__ {scalar_t__ op1; scalar_t__ op2; size_t o; int t; int r; } ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 TYPE_1__* IR (scalar_t__) ;
 int irm_iscomm (int ) ;
 scalar_t__ irref_isk (scalar_t__) ;
 int irt_isphi (int ) ;
 int * lj_ir_mode ;
 int lua_assert (int ) ;
 scalar_t__ opisfusableload (size_t) ;
 scalar_t__ ra_hasreg (int ) ;
 int ra_noreg (int ) ;
 scalar_t__ ra_samehint (int ,int ) ;

__attribute__((used)) static int asm_swapops(ASMState *as, IRIns *ir)
{
  IRIns *irl = IR(ir->op1);
  IRIns *irr = IR(ir->op2);
  lua_assert(ra_noreg(irr->r));
  if (!irm_iscomm(lj_ir_mode[ir->o]))
    return 0;
  if (irref_isk(ir->op2))
    return 0;
  if (ra_hasreg(irl->r))
    return 1;
  if (ra_samehint(ir->r, irr->r))
    return 1;
  if (as->curins > as->loopref) {
    if (ir->op2 < as->loopref && !irt_isphi(irr->t))
      return 0;
    if (ir->op1 < as->loopref && !irt_isphi(irl->t))
      return 1;
  }
  if (opisfusableload(irl->o))
    return 1;
  return 0;
}
