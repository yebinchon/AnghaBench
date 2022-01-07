
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Reg ;
typedef int IRIns ;
typedef int ASMState ;


 int CC_NE ;
 int REX_64 ;
 int RID_NONE ;
 int RSET_GPR ;
 int XO_ARITHi8 ;
 int XO_MOV ;
 int XOg_CMP ;
 int XOg_SAR ;
 int asm_guardcc (int *,int ) ;
 int emit_i8 (int *,int) ;
 int emit_rr (int *,int ,int,int) ;
 int emit_shifti (int *,int,int,int) ;
 int ra_dest (int *,int *,int ) ;
 int ra_scratch (int *,int ) ;
 scalar_t__ ra_used (int *) ;
 int rset_exclude (int ,int) ;

__attribute__((used)) static Reg asm_load_lightud64(ASMState *as, IRIns *ir, int typecheck)
{
  if (ra_used(ir) || typecheck) {
    Reg dest = ra_dest(as, ir, RSET_GPR);
    if (typecheck) {
      Reg tmp = ra_scratch(as, rset_exclude(RSET_GPR, dest));
      asm_guardcc(as, CC_NE);
      emit_i8(as, -2);
      emit_rr(as, XO_ARITHi8, XOg_CMP, tmp);
      emit_shifti(as, XOg_SAR|REX_64, tmp, 47);
      emit_rr(as, XO_MOV, tmp|REX_64, dest);
    }
    return dest;
  } else {
    return RID_NONE;
  }
}
