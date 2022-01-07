
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_11__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ int32_t ;
struct TYPE_31__ {scalar_t__ topslot; size_t stopins; size_t* parentmap; int freeset; TYPE_2__* T; TYPE_11__* J; TYPE_1__* parent; int * cost; scalar_t__ snapno; } ;
struct TYPE_30__ {scalar_t__ o; int op2; size_t r; int s; int t; } ;
struct TYPE_29__ {scalar_t__ topslot; int nsnap; scalar_t__ traceno; scalar_t__ spadjust; } ;
struct TYPE_28__ {scalar_t__ topslot; scalar_t__ spadjust; TYPE_3__* ir; } ;
struct TYPE_27__ {int exitno; } ;
typedef int RegSet ;
typedef size_t RegSP ;
typedef size_t Reg ;
typedef size_t IRRef1 ;
typedef size_t IRRef ;
typedef TYPE_3__ IRIns ;
typedef int ExitNo ;
typedef TYPE_4__ ASMState ;


 TYPE_3__* IR (size_t) ;
 int IRSLOAD_PARENT ;
 scalar_t__ IR_HIOP ;
 scalar_t__ IR_PVAL ;
 scalar_t__ IR_SLOAD ;
 scalar_t__ LJ_SOFTFP ;
 int LJ_TRERR_NYICOAL ;
 size_t REF_BASE ;
 size_t REF_FIRST ;
 int RID_MAX ;
 int RSET_ALL ;
 int RSET_EMPTY ;
 int RSET_FPR ;
 int RSET_GPR ;
 int asm_head_side_base (TYPE_4__*,TYPE_3__*,int) ;
 int asm_snap_alloc (TYPE_4__*) ;
 scalar_t__ asm_stack_adjust (TYPE_4__*) ;
 int asm_stack_check (TYPE_4__*,scalar_t__,TYPE_3__*,int,int ) ;
 int checkmclim (TYPE_4__*) ;
 int emit_movrr (TYPE_4__*,TYPE_3__*,size_t,size_t) ;
 int emit_setvmstate (TYPE_4__*,scalar_t__) ;
 int emit_spload (TYPE_4__*,TYPE_3__*,size_t,scalar_t__) ;
 int emit_spsub (TYPE_4__*,scalar_t__) ;
 int irt_clearmark (int ) ;
 scalar_t__ irt_isfp (int ) ;
 scalar_t__ irt_ismarked (int ) ;
 int irt_setmark (int ) ;
 int lj_trace_err (TYPE_11__*,int ) ;
 int lua_assert (int) ;
 size_t ra_allocref (TYPE_4__*,size_t,int) ;
 int ra_free (TYPE_4__*,size_t) ;
 scalar_t__ ra_hasreg (size_t) ;
 scalar_t__ ra_hasspill (int ) ;
 int ra_rename (TYPE_4__*,size_t,size_t) ;
 int ra_save (TYPE_4__*,TYPE_3__*,size_t) ;
 int ra_sethint (size_t,size_t) ;
 scalar_t__ ra_used (TYPE_3__*) ;
 size_t regcost_ref (int ) ;
 int regsp_spill (size_t) ;
 int rset_clear (int,size_t) ;
 size_t rset_pickbot (int) ;
 int rset_set (int,size_t) ;
 scalar_t__ sps_scale (int ) ;

__attribute__((used)) static void asm_head_side(ASMState *as)
{
  IRRef1 sloadins[RID_MAX];
  RegSet allow = RSET_ALL;
  RegSet live = RSET_EMPTY;
  IRIns *irp = &as->parent->ir[REF_BASE];
  int32_t spadj, spdelta;
  int pass2 = 0;
  int pass3 = 0;
  IRRef i;

  if (as->snapno && as->topslot > as->parent->topslot) {

    as->snapno = 0;
    asm_snap_alloc(as);
  }
  allow = asm_head_side_base(as, irp, allow);


  for (i = as->stopins; i > REF_BASE; i--) {
    IRIns *ir = IR(i);
    RegSP rs;
    lua_assert((ir->o == IR_SLOAD && (ir->op2 & IRSLOAD_PARENT)) ||
        (LJ_SOFTFP && ir->o == IR_HIOP) || ir->o == IR_PVAL);
    rs = as->parentmap[i - REF_FIRST];
    if (ra_hasreg(ir->r)) {
      rset_clear(allow, ir->r);
      if (ra_hasspill(ir->s)) {
 ra_save(as, ir, ir->r);
 checkmclim(as);
      }
    } else if (ra_hasspill(ir->s)) {
      irt_setmark(ir->t);
      pass2 = 1;
    }
    if (ir->r == rs) {
      ra_free(as, ir->r);
    } else if (ra_hasspill(regsp_spill(rs))) {
      if (ra_hasreg(ir->r))
 pass3 = 1;
    } else if (ra_used(ir)) {
      sloadins[rs] = (IRRef1)i;
      rset_set(live, rs);
    }
  }


  spadj = asm_stack_adjust(as);
  spdelta = spadj - (int32_t)as->parent->spadjust;
  if (spdelta < 0) {
    spadj = (int32_t)as->parent->spadjust;
    spdelta = 0;
  }
  as->T->spadjust = (uint16_t)spadj;


  if (pass2) {
    for (i = as->stopins; i > REF_BASE; i--) {
      IRIns *ir = IR(i);
      if (irt_ismarked(ir->t)) {
 RegSet mask;
 Reg r;
 RegSP rs;
 irt_clearmark(ir->t);
 rs = as->parentmap[i - REF_FIRST];
 if (!ra_hasspill(regsp_spill(rs)))
   ra_sethint(ir->r, rs);
 else if (sps_scale(regsp_spill(rs))+spdelta == sps_scale(ir->s))
   continue;
 mask = ((!LJ_SOFTFP && irt_isfp(ir->t)) ? RSET_FPR : RSET_GPR) & allow;
 if (mask == RSET_EMPTY)
   lj_trace_err(as->J, LJ_TRERR_NYICOAL);
 r = ra_allocref(as, i, mask);
 ra_save(as, ir, r);
 rset_clear(allow, r);
 if (r == rs) {
   ra_free(as, r);
   rset_clear(live, r);
 } else if (ra_hasspill(regsp_spill(rs))) {
   pass3 = 1;
 }
 checkmclim(as);
      }
    }
  }


  emit_setvmstate(as, (int32_t)as->T->traceno);
  emit_spsub(as, spdelta);



  if (ra_hasspill(irp->s))
    emit_spload(as, IR(REF_BASE), IR(REF_BASE)->r, sps_scale(irp->s));



  if (pass3) {
    RegSet work = ~as->freeset & RSET_ALL;
    while (work) {
      Reg r = rset_pickbot(work);
      IRRef ref = regcost_ref(as->cost[r]);
      RegSP rs = as->parentmap[ref - REF_FIRST];
      rset_clear(work, r);
      if (ra_hasspill(regsp_spill(rs))) {
 int32_t ofs = sps_scale(regsp_spill(rs));
 ra_free(as, r);
 emit_spload(as, IR(ref), r, ofs);
 checkmclim(as);
      }
    }
  }


  for (;;) {
    RegSet work;


    while ((work = as->freeset & live) != RSET_EMPTY) {
      Reg rp = rset_pickbot(work);
      IRIns *ir = IR(sloadins[rp]);
      rset_clear(live, rp);
      rset_clear(allow, rp);
      ra_free(as, ir->r);
      emit_movrr(as, ir, ir->r, rp);
      checkmclim(as);
    }


    if (live == RSET_EMPTY)
      break;


    if (live & RSET_GPR) {
      RegSet tmpset = as->freeset & ~live & allow & RSET_GPR;
      if (tmpset == RSET_EMPTY)
 lj_trace_err(as->J, LJ_TRERR_NYICOAL);
      ra_rename(as, rset_pickbot(live & RSET_GPR), rset_pickbot(tmpset));
    }
    if (!LJ_SOFTFP && (live & RSET_FPR)) {
      RegSet tmpset = as->freeset & ~live & allow & RSET_FPR;
      if (tmpset == RSET_EMPTY)
 lj_trace_err(as->J, LJ_TRERR_NYICOAL);
      ra_rename(as, rset_pickbot(live & RSET_FPR), rset_pickbot(tmpset));
    }
    checkmclim(as);

  }


  as->T->topslot = as->parent->topslot;
  if (as->topslot > as->T->topslot) {





    ExitNo exitno = as->J->exitno;

    as->T->topslot = (uint8_t)as->topslot;
    asm_stack_check(as, as->topslot, irp, allow & RSET_GPR, exitno);
  }
}
