
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int modset; int freeset; int * cost; } ;
typedef int RegSet ;
typedef size_t Reg ;
typedef TYPE_1__ ASMState ;


 int RSET_FPR ;
 int checkmclim (TYPE_1__*) ;
 int ra_restore (TYPE_1__*,int ) ;
 int regcost_ref (int ) ;
 int rset_clear (int,size_t) ;
 size_t rset_pickbot (int) ;

__attribute__((used)) static void ra_evictset(ASMState *as, RegSet drop)
{
  RegSet work;
  as->modset |= drop;

  work = (drop & ~as->freeset) & RSET_FPR;
  while (work) {
    Reg r = rset_pickbot(work);
    ra_restore(as, regcost_ref(as->cost[r]));
    rset_clear(work, r);
    checkmclim(as);
  }

  work = (drop & ~as->freeset);
  while (work) {
    Reg r = rset_pickbot(work);
    ra_restore(as, regcost_ref(as->cost[r]));
    rset_clear(work, r);
    checkmclim(as);
  }
}
