
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Reg ;
typedef int IRIns ;
typedef int ASMState ;


 int REX_64IR (int *,int ) ;
 int RID_MAX_GPR ;
 int UNUSED (int *) ;
 int XO_MOV ;
 int XO_MOVAPS ;
 int emit_rr (int *,int ,int ,int ) ;

__attribute__((used)) static void emit_movrr(ASMState *as, IRIns *ir, Reg dst, Reg src)
{
  UNUSED(ir);
  if (dst < RID_MAX_GPR)
    emit_rr(as, XO_MOV, REX_64IR(ir, dst), src);
  else
    emit_rr(as, XO_MOVAPS, dst, src);
}
