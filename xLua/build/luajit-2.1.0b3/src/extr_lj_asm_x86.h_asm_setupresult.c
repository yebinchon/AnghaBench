
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {scalar_t__ o; int r; int t; int s; } ;
typedef int RegSet ;
typedef int Reg ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ CCallInfo ;
typedef int ASMState ;


 int CCI_CASTU64 ;
 int CCI_NOFPRCLOBBER ;
 scalar_t__ IR_HIOP ;
 scalar_t__ LJ_32 ;
 int REX_64 ;
 int RID_ESP ;
 int RID_FPRET ;
 int RID_RET ;
 int RID_RETHI ;
 int RID_RETLO ;
 int RSET_FPR ;
 int RSET_SCRATCH ;
 int XI_FPOP ;
 int XO_FSTPd ;
 int XO_FSTPq ;
 int XO_MOVD ;
 int XO_MOVSD ;
 int XO_MOVSS ;
 int XOg_FSTPd ;
 int XOg_FSTPq ;
 int emit_movtomro (int *,int,int ,scalar_t__) ;
 int emit_rmro (int *,int ,int,int ,scalar_t__) ;
 int emit_rr (int *,int ,int,int) ;
 int emit_x87op (int *,int ) ;
 scalar_t__ irt_isfp (int ) ;
 int irt_isnil (int ) ;
 scalar_t__ irt_isnum (int ) ;
 int irt_ispri (int ) ;
 int lua_assert (int) ;
 int ra_destpair (int *,TYPE_1__*) ;
 int ra_destreg (int *,TYPE_1__*,int) ;
 int ra_evictset (int *,int ) ;
 int ra_free (int *,int) ;
 scalar_t__ ra_hasreg (int) ;
 int ra_modified (int *,int) ;
 scalar_t__ ra_used (TYPE_1__*) ;
 int rset_clear (int ,int) ;
 scalar_t__ sps_scale (int ) ;

__attribute__((used)) static void asm_setupresult(ASMState *as, IRIns *ir, const CCallInfo *ci)
{
  RegSet drop = RSET_SCRATCH;
  int hiop = (LJ_32 && (ir+1)->o == IR_HIOP && !irt_isnil((ir+1)->t));
  if ((ci->flags & CCI_NOFPRCLOBBER))
    drop &= ~RSET_FPR;
  if (ra_hasreg(ir->r))
    rset_clear(drop, ir->r);
  if (hiop && ra_hasreg((ir+1)->r))
    rset_clear(drop, (ir+1)->r);
  ra_evictset(as, drop);
  if (ra_used(ir)) {
    if (irt_isfp(ir->t)) {
      int32_t ofs = sps_scale(ir->s);
      Reg dest = ir->r;
      if (ra_hasreg(dest)) {
 ra_free(as, dest);
 ra_modified(as, dest);
 emit_rmro(as, irt_isnum(ir->t) ? XO_MOVSD : XO_MOVSS,
    dest, RID_ESP, ofs);
      }
      if ((ci->flags & CCI_CASTU64)) {
 emit_movtomro(as, RID_RETLO, RID_ESP, ofs);
 emit_movtomro(as, RID_RETHI, RID_ESP, ofs+4);
      } else {
 emit_rmro(as, irt_isnum(ir->t) ? XO_FSTPq : XO_FSTPd,
    irt_isnum(ir->t) ? XOg_FSTPq : XOg_FSTPd, RID_ESP, ofs);
      }





    } else {
      lua_assert(!irt_ispri(ir->t));
      ra_destreg(as, ir, RID_RET);
    }
  } else if (LJ_32 && irt_isfp(ir->t) && !(ci->flags & CCI_CASTU64)) {
    emit_x87op(as, XI_FPOP);
  }
}
