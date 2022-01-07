
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int evenspill; } ;
struct TYPE_8__ {int t; } ;
typedef int Reg ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef int CCallInfo ;
typedef TYPE_2__ ASMState ;


 int CCI_NARGS_MAX ;
 int REGSP_HINT (int ) ;
 int REGSP_INIT ;
 int RID_FPRET ;
 int RID_RET ;
 int asm_collectargs (TYPE_2__*,TYPE_1__*,int const*,int *) ;
 int asm_count_call_slots (TYPE_2__*,int const*,int *) ;
 scalar_t__ irt_isfp (int ) ;

__attribute__((used)) static Reg asm_setup_call_slots(ASMState *as, IRIns *ir, const CCallInfo *ci)
{
  IRRef args[CCI_NARGS_MAX*2];
  int nslots;
  asm_collectargs(as, ir, ci, args);
  nslots = asm_count_call_slots(as, ci, args);
  if (nslots > as->evenspill)
    as->evenspill = nslots;



  return irt_isfp(ir->t) ? REGSP_INIT : REGSP_HINT(RID_RET);

}
