
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int op1; int op2; } ;
typedef int Reg ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 int REX_64IR (TYPE_1__*,int ) ;
 int RSET_GPR ;
 scalar_t__ XO_CMOV ;
 scalar_t__ XO_CMP ;
 int emit_rr (int *,scalar_t__,int ,int ) ;
 scalar_t__ irref_isk (int ) ;
 int ra_alloc1 (int *,int ,int ) ;
 int ra_dest (int *,TYPE_1__*,int ) ;
 int ra_left (int *,int ,int ) ;
 int rset_exclude (int ,int ) ;

__attribute__((used)) static void asm_intmin_max(ASMState *as, IRIns *ir, int cc)
{
  Reg right, dest = ra_dest(as, ir, RSET_GPR);
  IRRef lref = ir->op1, rref = ir->op2;
  if (irref_isk(rref)) { lref = rref; rref = ir->op1; }
  right = ra_alloc1(as, rref, rset_exclude(RSET_GPR, dest));
  emit_rr(as, XO_CMOV + (cc<<24), REX_64IR(ir, dest), right);
  emit_rr(as, XO_CMP, REX_64IR(ir, dest), right);
  ra_left(as, dest, lref);
}
