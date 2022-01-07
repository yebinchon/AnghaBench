
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int x86Shift ;
struct TYPE_6__ {int i; scalar_t__ r; int op1; int t; int op2; } ;
typedef scalar_t__ Reg ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 TYPE_1__* IR (int ) ;
 scalar_t__ REX_64IR (TYPE_1__*,int ) ;
 int RID2RSET (scalar_t__) ;
 scalar_t__ RID_ECX ;
 int RSET_GPR ;
 int XO_MOV ;
 int XO_SHIFT1 ;
 int XO_SHIFTcl ;
 int emit_rr (int *,int ,scalar_t__,scalar_t__) ;
 int emit_shifti (int *,scalar_t__,scalar_t__,int) ;
 scalar_t__ irref_isk (int ) ;
 scalar_t__ irt_is64 (int ) ;
 scalar_t__ ra_allocref (int *,int ,int ) ;
 scalar_t__ ra_dest (int *,TYPE_1__*,int ) ;
 int ra_left (int *,scalar_t__,int ) ;
 scalar_t__ ra_noreg (scalar_t__) ;
 int ra_noweak (int *,scalar_t__) ;
 scalar_t__ ra_scratch (int *,int ) ;
 int rset_exclude (int ,scalar_t__) ;

__attribute__((used)) static void asm_bitshift(ASMState *as, IRIns *ir, x86Shift xs)
{
  IRRef rref = ir->op2;
  IRIns *irr = IR(rref);
  Reg dest;
  if (irref_isk(rref)) {
    int shift;
    dest = ra_dest(as, ir, RSET_GPR);
    shift = irr->i & (irt_is64(ir->t) ? 63 : 31);
    switch (shift) {
    case 0: break;
    case 1: emit_rr(as, XO_SHIFT1, REX_64IR(ir, xs), dest); break;
    default: emit_shifti(as, REX_64IR(ir, xs), dest, shift); break;
    }
  } else {
    Reg right;
    dest = ra_dest(as, ir, rset_exclude(RSET_GPR, RID_ECX));
    if (dest == RID_ECX) {
      dest = ra_scratch(as, rset_exclude(RSET_GPR, RID_ECX));
      emit_rr(as, XO_MOV, RID_ECX, dest);
    }
    right = irr->r;
    if (ra_noreg(right))
      right = ra_allocref(as, rref, RID2RSET(RID_ECX));
    else if (right != RID_ECX)
      ra_scratch(as, RID2RSET(RID_ECX));
    emit_rr(as, XO_SHIFTcl, REX_64IR(ir, xs), dest);
    ra_noweak(as, right);
    if (right != RID_ECX)
      emit_rr(as, XO_MOV, RID_ECX, right);
  }
  ra_left(as, dest, ir->op1);





}
