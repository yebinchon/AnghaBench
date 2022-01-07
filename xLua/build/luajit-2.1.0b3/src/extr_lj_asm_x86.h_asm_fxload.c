
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int x86Op ;
struct TYPE_5__ {scalar_t__ o; int t; int op1; } ;
typedef int Reg ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;
 scalar_t__ IR_FLOAD ;
 int LJ_64 ;
 int REX_64 ;
 int RID_MRM ;
 int RSET_FPR ;
 int RSET_GPR ;
 int XO_MOV ;
 int XO_MOVSD ;
 int XO_MOVSS ;
 int XO_MOVSXb ;
 int XO_MOVSXw ;
 int XO_MOVZXb ;
 int XO_MOVZXw ;
 int asm_fusefref (int *,TYPE_1__*,int ) ;
 int asm_fusexref (int *,int ,int ) ;
 int emit_mrm (int *,int ,int ,int ) ;
 int irt_is64 (int ) ;
 int irt_isaddr (int ) ;
 scalar_t__ irt_isfp (int ) ;
 int irt_isint (int ) ;
 int irt_isu32 (int ) ;
 int irt_type (int ) ;
 int lua_assert (int) ;
 int ra_dest (int *,TYPE_1__*,int ) ;

__attribute__((used)) static void asm_fxload(ASMState *as, IRIns *ir)
{
  Reg dest = ra_dest(as, ir, irt_isfp(ir->t) ? RSET_FPR : RSET_GPR);
  x86Op xo;
  if (ir->o == IR_FLOAD)
    asm_fusefref(as, ir, RSET_GPR);
  else
    asm_fusexref(as, ir->op1, RSET_GPR);

  switch (irt_type(ir->t)) {
  case 131: xo = XO_MOVSXb; break;
  case 128: xo = XO_MOVZXb; break;
  case 132: xo = XO_MOVSXw; break;
  case 129: xo = XO_MOVZXw; break;
  case 130: xo = XO_MOVSD; break;
  case 133: xo = XO_MOVSS; break;
  default:
    if (LJ_64 && irt_is64(ir->t))
      dest |= REX_64;
    else
      lua_assert(irt_isint(ir->t) || irt_isu32(ir->t) || irt_isaddr(ir->t));
    xo = XO_MOV;
    break;
  }
  emit_mrm(as, xo, dest, RID_MRM);
}
