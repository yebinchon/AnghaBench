
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Reg ;
typedef int IRIns ;
typedef int ASMState ;


 int RID_MRM ;
 int RSET_GPR ;
 int XO_LEA ;
 int asm_fusefref (int *,int *,int ) ;
 int emit_mrm (int *,int ,int ,int ) ;
 int ra_dest (int *,int *,int ) ;

__attribute__((used)) static void asm_fref(ASMState *as, IRIns *ir)
{
  Reg dest = ra_dest(as, ir, RSET_GPR);
  asm_fusefref(as, ir, RSET_GPR);
  emit_mrm(as, XO_LEA, dest, RID_MRM);
}
