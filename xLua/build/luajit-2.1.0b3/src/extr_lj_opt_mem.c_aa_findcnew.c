
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int jit_State ;
struct TYPE_5__ {scalar_t__ o; int op2; int op1; } ;
typedef TYPE_1__ IRIns ;


 TYPE_1__* IR (int ) ;
 scalar_t__ IR_ADD ;
 scalar_t__ IR_CNEW ;
 scalar_t__ irref_isk (int ) ;

__attribute__((used)) static IRIns *aa_findcnew(jit_State *J, IRIns *ir)
{
  while (ir->o == IR_ADD) {
    if (!irref_isk(ir->op1)) {
      IRIns *ir1 = aa_findcnew(J, IR(ir->op1));
      if (ir1) return ir1;
    }
    if (irref_isk(ir->op2)) return ((void*)0);
    ir = IR(ir->op2);
  }
  return ir->o == IR_CNEW ? ir : ((void*)0);
}
