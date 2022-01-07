
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int freeset; int * cost; } ;
typedef int RegSet ;
typedef size_t Reg ;
typedef int IRRef ;
typedef TYPE_1__ ASMState ;


 int RSET_FPR ;
 int RSET_GPR ;
 int checkmclim (TYPE_1__*) ;
 scalar_t__ emit_canremat (int ) ;
 scalar_t__ irref_isk (int ) ;
 int ra_rematk (TYPE_1__*,int ) ;
 int regcost_ref (int ) ;
 int rset_clear (int,size_t) ;
 size_t rset_pickbot (int) ;

__attribute__((used)) static void ra_evictk(ASMState *as)
{
  RegSet work;

  work = ~as->freeset & RSET_FPR;
  while (work) {
    Reg r = rset_pickbot(work);
    IRRef ref = regcost_ref(as->cost[r]);
    if (emit_canremat(ref) && irref_isk(ref)) {
      ra_rematk(as, ref);
      checkmclim(as);
    }
    rset_clear(work, r);
  }

  work = ~as->freeset & RSET_GPR;
  while (work) {
    Reg r = rset_pickbot(work);
    IRRef ref = regcost_ref(as->cost[r]);
    if (emit_canremat(ref) && irref_isk(ref)) {
      ra_rematk(as, ref);
      checkmclim(as);
    }
    rset_clear(work, r);
  }
}
