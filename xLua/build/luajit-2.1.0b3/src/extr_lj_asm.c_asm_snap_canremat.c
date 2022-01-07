
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cost; } ;
typedef size_t Reg ;
typedef TYPE_1__ ASMState ;


 size_t RID_MAX_FPR ;
 size_t RID_MIN_FPR ;
 scalar_t__ irref_isk (int ) ;
 int regcost_ref (int ) ;

__attribute__((used)) static int asm_snap_canremat(ASMState *as)
{
  Reg r;
  for (r = RID_MIN_FPR; r < RID_MAX_FPR; r++)
    if (irref_isk(regcost_ref(as->cost[r])))
      return 1;
  return 0;
}
