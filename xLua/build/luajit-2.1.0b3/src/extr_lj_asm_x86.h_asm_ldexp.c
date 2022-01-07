
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int op2; int op1; int r; int s; } ;
typedef int Reg ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 int RID_ESP ;
 int XI_FPOP1 ;
 int XI_FSCALE ;
 int XO_FSTPq ;
 int XO_MOVSD ;
 int XOg_FSTPq ;
 int asm_x87load (int *,int ) ;
 int emit_rmro (int *,int ,int ,int ,int ) ;
 int emit_x87op (int *,int ) ;
 int ra_free (int *,int ) ;
 scalar_t__ ra_hasreg (int ) ;
 int ra_modified (int *,int ) ;
 int sps_scale (int ) ;

__attribute__((used)) static void asm_ldexp(ASMState *as, IRIns *ir)
{
  int32_t ofs = sps_scale(ir->s);
  Reg dest = ir->r;
  if (ra_hasreg(dest)) {
    ra_free(as, dest);
    ra_modified(as, dest);
    emit_rmro(as, XO_MOVSD, dest, RID_ESP, ofs);
  }
  emit_rmro(as, XO_FSTPq, XOg_FSTPq, RID_ESP, ofs);
  emit_x87op(as, XI_FPOP1);
  emit_x87op(as, XI_FSCALE);
  asm_x87load(as, ir->op1);
  asm_x87load(as, ir->op2);
}
