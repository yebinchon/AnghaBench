
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ snapref; scalar_t__ curins; int freeset; } ;
struct TYPE_16__ {scalar_t__ r; scalar_t__ o; scalar_t__ op2; scalar_t__ op1; int s; int t; } ;
typedef int RegSet ;
typedef int Reg ;
typedef scalar_t__ IRRef ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 TYPE_1__* IR (scalar_t__) ;
 scalar_t__ IRCONV_NUM_INT ;
 scalar_t__ IR_ASTORE ;
 scalar_t__ IR_CNEW ;
 scalar_t__ IR_CNEWI ;
 scalar_t__ IR_CONV ;
 scalar_t__ IR_FSTORE ;
 scalar_t__ IR_HIOP ;
 scalar_t__ IR_HSTORE ;
 scalar_t__ IR_TDUP ;
 scalar_t__ IR_TNEW ;
 scalar_t__ IR_XSTORE ;
 scalar_t__ LJ_32 ;
 int LJ_SOFTFP ;
 int RA_DBGX (TYPE_2__*) ;
 scalar_t__ RID_SINK ;
 scalar_t__ RID_SUNK ;
 int RSET_FPR ;
 int RSET_GPR ;
 scalar_t__ asm_snap_canremat (TYPE_2__*) ;
 scalar_t__ asm_sunk_store (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int checkmclim (TYPE_2__*) ;
 int irref_isk (scalar_t__) ;
 scalar_t__ irt_isfp (int ) ;
 int irt_isphi (int ) ;
 int lua_assert (int) ;
 int ra_allocref (TYPE_2__*,scalar_t__,int) ;
 int ra_spill (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ ra_used (TYPE_1__*) ;
 int ra_weak (TYPE_2__*,int ) ;

__attribute__((used)) static void asm_snap_alloc1(ASMState *as, IRRef ref)
{
  IRIns *ir = IR(ref);
  if (!irref_isk(ref) && (!(ra_used(ir) || ir->r == RID_SUNK))) {
    if (ir->r == RID_SINK) {
      ir->r = RID_SUNK;







      {
 IRIns *irs;
 lua_assert(ir->o == IR_TNEW || ir->o == IR_TDUP || ir->o == IR_CNEW);
 for (irs = IR(as->snapref-1); irs > ir; irs--)
   if (irs->r == RID_SINK && asm_sunk_store(as, ir, irs)) {
     lua_assert(irs->o == IR_ASTORE || irs->o == IR_HSTORE ||
         irs->o == IR_FSTORE || irs->o == IR_XSTORE);
     asm_snap_alloc1(as, irs->op2);
     if (LJ_32 && (irs+1)->o == IR_HIOP)
       asm_snap_alloc1(as, (irs+1)->op2);
   }
      }
    } else {
      RegSet allow;
      if (ir->o == IR_CONV && ir->op2 == IRCONV_NUM_INT) {
 IRIns *irc;
 for (irc = IR(as->curins); irc > ir; irc--)
   if ((irc->op1 == ref || irc->op2 == ref) &&
       !(irc->r == RID_SINK || irc->r == RID_SUNK))
     goto nosink;
 asm_snap_alloc1(as, ir->op1);
 return;
      }
    nosink:
      allow = (!LJ_SOFTFP && irt_isfp(ir->t)) ? RSET_FPR : RSET_GPR;
      if ((as->freeset & allow) ||
        (allow == RSET_FPR && asm_snap_canremat(as))) {

 Reg r = ra_allocref(as, ref, allow);
 if (!irt_isphi(ir->t))
   ra_weak(as, r);
 checkmclim(as);
 RA_DBGX((as, "snapreg   $f $r", ref, ir->r));
      } else {
 ra_spill(as, ir);
 RA_DBGX((as, "snapspill $f $s", ref, ir->s));
      }
    }
  }
}
