
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int freeset; int * cost; scalar_t__ orignins; } ;
struct TYPE_10__ {scalar_t__ o; int s; int t; scalar_t__ op1; } ;
typedef size_t Reg ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 TYPE_1__* IR (scalar_t__) ;
 scalar_t__ IR_PHI ;
 size_t RID_FPRET ;
 size_t RID_RET ;
 size_t RID_TMP ;
 size_t RID_XMM0 ;
 int RSET_FPR ;
 int RSET_GPR ;
 int SPOFS_TMP ;
 int checkmclim (TYPE_2__*) ;
 int emit_spload (TYPE_2__*,TYPE_1__*,size_t,int ) ;
 int emit_spstore (TYPE_2__*,TYPE_1__*,size_t,int ) ;
 scalar_t__ irt_isfp (int ) ;
 scalar_t__ ra_hasspill (int ) ;
 scalar_t__ regcost_ref (int ) ;
 size_t rset_pickbot (int) ;
 int rset_test (int,size_t) ;
 int sps_scale (int ) ;

__attribute__((used)) static void asm_phi_copyspill(ASMState *as)
{
  int need = 0;
  IRIns *ir;
  for (ir = IR(as->orignins-1); ir->o == IR_PHI; ir--)
    if (ra_hasspill(ir->s) && ra_hasspill(IR(ir->op1)->s))
      need |= irt_isfp(ir->t) ? 2 : 1;
  if ((need & 1)) {

    Reg r = RID_TMP;







    for (ir = IR(as->orignins-1); ir->o == IR_PHI; ir--) {
      if (ra_hasspill(ir->s)) {
 IRIns *irl = IR(ir->op1);
 if (ra_hasspill(irl->s) && !irt_isfp(ir->t)) {
   emit_spstore(as, irl, r, sps_scale(irl->s));
   emit_spload(as, ir, r, sps_scale(ir->s));
   checkmclim(as);
 }
      }
    }




  }

  if ((need & 2)) {



    Reg r = RID_FPRET;

    if ((as->freeset & RSET_FPR))
      r = rset_pickbot((as->freeset & RSET_FPR));
    if (!rset_test(as->freeset, r))
      emit_spload(as, IR(regcost_ref(as->cost[r])), r, SPOFS_TMP);
    for (ir = IR(as->orignins-1); ir->o == IR_PHI; ir--) {
      if (ra_hasspill(ir->s)) {
 IRIns *irl = IR(ir->op1);
 if (ra_hasspill(irl->s) && irt_isfp(ir->t)) {
   emit_spstore(as, irl, r, sps_scale(irl->s));
   emit_spload(as, ir, r, sps_scale(ir->s));
   checkmclim(as);
 }
      }
    }
    if (!rset_test(as->freeset, r))
      emit_spstore(as, IR(regcost_ref(as->cost[r])), r, SPOFS_TMP);
  }

}
