
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {int flags; int* mcp; } ;
struct TYPE_19__ {int op1; int r; int op2; } ;
typedef int RegSet ;
typedef int Reg ;
typedef int MCode ;
typedef TYPE_1__ IRIns ;
typedef scalar_t__ IRFPMathOp ;
typedef TYPE_2__ ASMState ;


 scalar_t__ IRCALL_lj_vm_floor ;
 scalar_t__ IRFPM_CEIL ;
 scalar_t__ IRFPM_EXP2 ;
 scalar_t__ IRFPM_FLOOR ;
 scalar_t__ IRFPM_SQRT ;
 scalar_t__ IRFPM_TRUNC ;
 int JIT_F_SSE4_1 ;
 scalar_t__ LJ_64 ;
 int RID2RSET (int ) ;
 int RID_EAX ;
 int RID_XMM0 ;
 scalar_t__ RID_XMM3 ;
 int RSET_FPR ;
 int RSET_RANGE (int ,scalar_t__) ;
 int XO_ROUNDSD ;
 int XO_SQRTSD ;
 int asm_callid (TYPE_2__*,TYPE_1__*,scalar_t__) ;
 scalar_t__ asm_fpjoin_pow (TYPE_2__*,TYPE_1__*) ;
 int asm_fuseload (TYPE_2__*,int ,int ) ;
 int emit_call (TYPE_2__*,int ) ;
 int emit_i8 (TYPE_2__*,scalar_t__) ;
 int emit_mrm (TYPE_2__*,int,int ,int ) ;
 int lj_vm_ceil_sse ;
 int lj_vm_floor_sse ;
 int lj_vm_trunc_sse ;
 int ra_dest (TYPE_2__*,TYPE_1__*,int ) ;
 int ra_destreg (TYPE_2__*,TYPE_1__*,int ) ;
 int ra_evictset (TYPE_2__*,int) ;
 scalar_t__ ra_hasreg (int ) ;
 int ra_left (TYPE_2__*,int ,int ) ;
 int rset_clear (int,int ) ;

__attribute__((used)) static void asm_fpmath(ASMState *as, IRIns *ir)
{
  IRFPMathOp fpm = (IRFPMathOp)ir->op2;
  if (fpm == IRFPM_SQRT) {
    Reg dest = ra_dest(as, ir, RSET_FPR);
    Reg left = asm_fuseload(as, ir->op1, RSET_FPR);
    emit_mrm(as, XO_SQRTSD, dest, left);
  } else if (fpm <= IRFPM_TRUNC) {
    if (as->flags & JIT_F_SSE4_1) {
      Reg dest = ra_dest(as, ir, RSET_FPR);
      Reg left = asm_fuseload(as, ir->op1, RSET_FPR);





      emit_i8(as, 0x09 + fpm);
      emit_mrm(as, XO_ROUNDSD, dest, left);
      if (LJ_64 && as->mcp[1] != (MCode)(XO_ROUNDSD >> 16)) {
 as->mcp[0] = as->mcp[1]; as->mcp[1] = 0x0f;
      }
      *--as->mcp = 0x66;
    } else {

      RegSet drop = RSET_RANGE(RID_XMM0, RID_XMM3+1)|RID2RSET(RID_EAX);
      if (ra_hasreg(ir->r))
 rset_clear(drop, ir->r);
      ra_evictset(as, drop);
      ra_destreg(as, ir, RID_XMM0);
      emit_call(as, fpm == IRFPM_FLOOR ? lj_vm_floor_sse :
      fpm == IRFPM_CEIL ? lj_vm_ceil_sse : lj_vm_trunc_sse);
      ra_left(as, RID_XMM0, ir->op1);
    }
  } else if (fpm == IRFPM_EXP2 && asm_fpjoin_pow(as, ir)) {

  } else {
    asm_callid(as, ir, IRCALL_lj_vm_floor + fpm);
  }
}
