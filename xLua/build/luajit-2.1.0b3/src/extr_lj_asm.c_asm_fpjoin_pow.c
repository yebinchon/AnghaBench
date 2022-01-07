
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ o; scalar_t__ op2; int op1; } ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 TYPE_1__* IR (int ) ;
 scalar_t__ IRFPM_LOG2 ;
 scalar_t__ IR_FPMATH ;
 scalar_t__ IR_MUL ;
 int asm_fppow (int *,TYPE_1__*,int ,scalar_t__) ;
 int ra_used (TYPE_1__*) ;

__attribute__((used)) static int asm_fpjoin_pow(ASMState *as, IRIns *ir)
{
  IRIns *irp = IR(ir->op1);
  if (irp == ir-1 && irp->o == IR_MUL && !ra_used(irp)) {
    IRIns *irpp = IR(irp->op1);
    if (irpp == ir-2 && irpp->o == IR_FPMATH &&
 irpp->op2 == IRFPM_LOG2 && !ra_used(irpp)) {
      asm_fppow(as, ir, irpp->op1, irp->op2);
      return 1;
    }
  }
  return 0;
}
