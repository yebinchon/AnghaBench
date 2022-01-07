
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int r; } ;
struct TYPE_5__ {int op1; int op2; } ;
typedef int Reg ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 TYPE_4__* IR (int ) ;
 int RSET_FPR ;
 int RSET_GPR ;
 int XO_ADDSD ;
 int XO_MOVDto ;
 int asm_fuseload (int *,int ,int ) ;
 int emit_mrm (int *,int ,int ,int ) ;
 int emit_rr (int *,int ,int ,int ) ;
 int ra_alloc1 (int *,int ,int ) ;
 int ra_dest (int *,TYPE_1__*,int ) ;
 int ra_left (int *,int ,int ) ;
 scalar_t__ ra_noreg (int ) ;
 int ra_scratch (int *,int ) ;
 int rset_exclude (int ,int ) ;

__attribute__((used)) static void asm_tobit(ASMState *as, IRIns *ir)
{
  Reg dest = ra_dest(as, ir, RSET_GPR);
  Reg tmp = ra_noreg(IR(ir->op1)->r) ?
       ra_alloc1(as, ir->op1, RSET_FPR) :
       ra_scratch(as, RSET_FPR);
  Reg right;
  emit_rr(as, XO_MOVDto, tmp, dest);
  right = asm_fuseload(as, ir->op2, rset_exclude(RSET_FPR, tmp));
  emit_mrm(as, XO_ADDSD, tmp, right);
  ra_left(as, tmp, ir->op1);
}
