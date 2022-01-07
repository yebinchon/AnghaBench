
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Reg ;
typedef int IRIns ;
typedef int ASMState ;


 int CC_NE ;
 int CC_P ;
 int RSET_FPR ;
 int RSET_GPR ;
 int XO_CVTSI2SD ;
 int XO_CVTTSD2SI ;
 int XO_UCOMISD ;
 int XO_XORPS ;
 int asm_guardcc (int *,int ) ;
 int emit_rr (int *,int ,int ,int ) ;
 int ra_dest (int *,int *,int ) ;
 int ra_scratch (int *,int ) ;
 int rset_exclude (int ,int ) ;

__attribute__((used)) static void asm_tointg(ASMState *as, IRIns *ir, Reg left)
{
  Reg tmp = ra_scratch(as, rset_exclude(RSET_FPR, left));
  Reg dest = ra_dest(as, ir, RSET_GPR);
  asm_guardcc(as, CC_P);
  asm_guardcc(as, CC_NE);
  emit_rr(as, XO_UCOMISD, left, tmp);
  emit_rr(as, XO_CVTSI2SD, tmp, dest);
  emit_rr(as, XO_XORPS, tmp, tmp);
  emit_rr(as, XO_CVTTSD2SI, dest, left);

}
