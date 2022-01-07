
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cost; int phireg; void* phiset; void* weakset; void* modset; int freeset; } ;
typedef size_t Reg ;
typedef TYPE_1__ ASMState ;


 int REGCOST (unsigned int,unsigned int) ;
 size_t RID_MAX ;
 size_t RID_MIN_GPR ;
 void* RSET_EMPTY ;
 int RSET_INIT ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void ra_setup(ASMState *as)
{
  Reg r;

  as->freeset = RSET_INIT;
  as->modset = RSET_EMPTY;
  as->weakset = RSET_EMPTY;
  as->phiset = RSET_EMPTY;
  memset(as->phireg, 0, sizeof(as->phireg));
  for (r = RID_MIN_GPR; r < RID_MAX; r++)
    as->cost[r] = REGCOST(~0u, 0u);
}
