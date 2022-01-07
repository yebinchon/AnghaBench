
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int phiset; int freeset; int modset; int * phireg; int * cost; } ;
struct TYPE_12__ {size_t r; int t; int s; } ;
typedef int RegSet ;
typedef size_t Reg ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 TYPE_1__* IR (int ) ;
 int LJ_SOFTFP ;
 int RID2RSET (size_t) ;
 size_t RID_NONE ;
 int RSET_EMPTY ;
 int RSET_FPR ;
 int RSET_GPR ;
 int asm_phi_break (TYPE_2__*,int,int,int) ;
 int checkmclim (TYPE_2__*) ;
 int irt_clearmark (int ) ;
 scalar_t__ irt_ismarked (int ) ;
 int ra_alloc1 (TYPE_2__*,int ,int ) ;
 scalar_t__ ra_hasreg (size_t) ;
 scalar_t__ ra_hasspill (int ) ;
 int ra_iskref (int ) ;
 int ra_rename (TYPE_2__*,size_t,size_t) ;
 int ra_restore (TYPE_2__*,int ) ;
 int ra_save (TYPE_2__*,TYPE_1__*,size_t) ;
 int regcost_ref (int ) ;
 int rset_clear (int,size_t) ;
 size_t rset_pickbot (int) ;
 size_t rset_picktop (int) ;
 int rset_set (int,size_t) ;
 int rset_test (int,size_t) ;

__attribute__((used)) static void asm_phi_shuffle(ASMState *as)
{
  RegSet work;


  for (;;) {
    RegSet blocked = RSET_EMPTY;
    RegSet blockedby = RSET_EMPTY;
    RegSet phiset = as->phiset;
    while (phiset) {
      Reg r = rset_pickbot(phiset);
      IRIns *irl = IR(as->phireg[r]);
      Reg left = irl->r;
      if (r != left) {
 if (!rset_test(as->freeset, r)) {
   IRRef ref = regcost_ref(as->cost[r]);

   if (!ra_iskref(ref) && irt_ismarked(IR(ref)->t)) {
     rset_set(blocked, r);
     if (ra_hasreg(left))
       rset_set(blockedby, left);
     left = RID_NONE;
   } else {
     ra_restore(as, ref);
     checkmclim(as);
   }
 }
 if (ra_hasreg(left)) {
   ra_rename(as, left, r);
   checkmclim(as);
 }
      }
      rset_clear(phiset, r);
    }
    if (!blocked) break;
    if (!(as->freeset & blocked)) {
      asm_phi_break(as, blocked, blockedby, RSET_GPR);
      if (!LJ_SOFTFP) asm_phi_break(as, blocked, blockedby, RSET_FPR);
      checkmclim(as);
    }
  }



  work = as->modset & ~(as->freeset | as->phiset) & RSET_FPR;
  while (work) {
    Reg r = rset_pickbot(work);
    ra_restore(as, regcost_ref(as->cost[r]));
    rset_clear(work, r);
    checkmclim(as);
  }

  work = as->modset & ~(as->freeset | as->phiset);
  while (work) {
    Reg r = rset_pickbot(work);
    ra_restore(as, regcost_ref(as->cost[r]));
    rset_clear(work, r);
    checkmclim(as);
  }


  work = as->phiset;
  while (work) {
    Reg r = rset_picktop(work);
    IRRef lref = as->phireg[r];
    IRIns *ir = IR(lref);
    if (ra_hasspill(ir->s)) {
      irt_clearmark(ir->t);
      ra_alloc1(as, lref, RID2RSET(r));
      ra_save(as, ir, r);
      checkmclim(as);
    }
    rset_clear(work, r);
  }
}
