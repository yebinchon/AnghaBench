
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_13__ {int phiset; int freeset; int J; scalar_t__* phireg; } ;
struct TYPE_12__ {scalar_t__ r; int s; int t; scalar_t__ op1; scalar_t__ op2; } ;
typedef int RegSet ;
typedef size_t Reg ;
typedef scalar_t__ IRRef1 ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 TYPE_1__* IR (scalar_t__) ;
 int LJ_SOFTFP ;
 int LJ_TRERR_NYIPHI ;
 scalar_t__ RID_SINK ;
 int RSET_FPR ;
 int RSET_GPR ;
 int emit_movrr (TYPE_2__*,TYPE_1__*,size_t,scalar_t__) ;
 scalar_t__ irt_isfp (int ) ;
 int irt_setmark (int ) ;
 int lj_trace_err (int ,int ) ;
 size_t ra_allocref (TYPE_2__*,scalar_t__,int) ;
 scalar_t__ ra_hasreg (scalar_t__) ;
 scalar_t__ ra_hasspill (int ) ;
 scalar_t__ ra_noreg (scalar_t__) ;
 size_t ra_scratch (TYPE_2__*,int) ;
 int ra_sethint (scalar_t__,size_t) ;
 int ra_spill (TYPE_2__*,TYPE_1__*) ;
 int rset_set (int,size_t) ;

__attribute__((used)) static void asm_phi(ASMState *as, IRIns *ir)
{
  RegSet allow = ((!LJ_SOFTFP && irt_isfp(ir->t)) ? RSET_FPR : RSET_GPR) &
   ~as->phiset;
  RegSet afree = (as->freeset & allow);
  IRIns *irl = IR(ir->op1);
  IRIns *irr = IR(ir->op2);
  if (ir->r == RID_SINK)
    return;

  if (ra_hasspill(irl->s) || ra_hasspill(irr->s))
    lj_trace_err(as->J, LJ_TRERR_NYIPHI);

  if ((afree & (afree-1))) {
    Reg r;
    if (ra_noreg(irr->r)) {
      r = ra_allocref(as, ir->op2, allow);
    } else {
      r = ra_scratch(as, allow);
      emit_movrr(as, irr, r, irr->r);
    }
    ir->r = (uint8_t)r;
    rset_set(as->phiset, r);
    as->phireg[r] = (IRRef1)ir->op1;
    irt_setmark(irl->t);
    if (ra_noreg(irl->r))
      ra_sethint(irl->r, r);
  } else {

    if (ra_hasreg(irl->r) || ra_hasreg(irr->r))
      lj_trace_err(as->J, LJ_TRERR_NYIPHI);
    ra_spill(as, ir);
    irr->s = ir->s;
  }
}
