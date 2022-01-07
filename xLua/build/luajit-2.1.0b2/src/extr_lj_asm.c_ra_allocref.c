
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_10__ {int freeset; scalar_t__ loopref; int modset; int * cost; } ;
struct TYPE_9__ {int t; scalar_t__ r; } ;
typedef int RegSet ;
typedef size_t Reg ;
typedef scalar_t__ IRRef ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 TYPE_1__* IR (scalar_t__) ;
 int RA_DBGX (TYPE_2__*) ;
 int REGCOST_REF_T (scalar_t__,int ) ;
 int RID_NUM_GPR ;
 int RSET_SCRATCH ;
 scalar_t__ emit_canremat (int ) ;
 int irt_isphi (int ) ;
 int irt_t (int ) ;
 int lua_assert (int ) ;
 size_t ra_evict (TYPE_2__*,int) ;
 size_t ra_gethint (scalar_t__) ;
 scalar_t__ ra_hashint (scalar_t__) ;
 int ra_noreg (scalar_t__) ;
 int ra_noweak (TYPE_2__*,size_t) ;
 int ra_rematk (TYPE_2__*,int ) ;
 int regcost_ref (int ) ;
 int rset_clear (int,size_t) ;
 size_t rset_pickbot (int) ;
 size_t rset_picktop (int) ;
 scalar_t__ rset_test (int,size_t) ;

__attribute__((used)) static Reg ra_allocref(ASMState *as, IRRef ref, RegSet allow)
{
  IRIns *ir = IR(ref);
  RegSet pick = as->freeset & allow;
  Reg r;
  lua_assert(ra_noreg(ir->r));
  if (pick) {

    if (ra_hashint(ir->r)) {
      r = ra_gethint(ir->r);
      if (rset_test(pick, r))
 goto found;

      if (rset_test(allow, r) && emit_canremat(regcost_ref(as->cost[r]))) {
 ra_rematk(as, regcost_ref(as->cost[r]));
 goto found;
      }
      RA_DBGX((as, "hintmiss  $f $r", ref, r));
    }

    if (ref < as->loopref && !irt_isphi(ir->t)) {
      if ((pick & ~as->modset))
 pick &= ~as->modset;
      r = rset_pickbot(pick);
    } else {

      if (RID_NUM_GPR > 8 && (pick & ~RSET_SCRATCH))
 pick &= ~RSET_SCRATCH;
      r = rset_picktop(pick);
    }
  } else {
    r = ra_evict(as, allow);
  }
found:
  RA_DBGX((as, "alloc     $f $r", ref, r));
  ir->r = (uint8_t)r;
  rset_clear(as->freeset, r);
  ra_noweak(as, r);
  as->cost[r] = REGCOST_REF_T(ref, irt_t(ir->t));
  return r;
}
