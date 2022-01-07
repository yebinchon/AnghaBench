
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int t; } ;
struct TYPE_5__ {int flags; } ;
typedef scalar_t__ IRRef ;
typedef TYPE_1__ CCallInfo ;
typedef int ASMState ;


 int CCI_CC_FASTCALL ;
 int CCI_CC_MASK ;
 int CCI_CC_THISCALL ;
 int CCI_XNARGS (TYPE_1__ const*) ;
 TYPE_3__* IR (scalar_t__) ;
 scalar_t__ LJ_ABI_WIN ;
 int REGARG_NUMFPR ;
 int REGARG_NUMGPR ;
 scalar_t__ irt_isfp (int ) ;
 scalar_t__ irt_isnum (int ) ;

__attribute__((used)) static int asm_count_call_slots(ASMState *as, const CCallInfo *ci, IRRef *args)
{
  uint32_t i, nargs = CCI_XNARGS(ci);
  int nslots = 0;
  int ngpr = 0;
  if ((ci->flags & CCI_CC_MASK) == CCI_CC_FASTCALL)
    ngpr = 2;
  else if ((ci->flags & CCI_CC_MASK) == CCI_CC_THISCALL)
    ngpr = 1;
  for (i = 0; i < nargs; i++)
    if (args[i] && irt_isfp(IR(args[i])->t)) {
      nslots += irt_isnum(IR(args[i])->t) ? 2 : 1;
    } else {
      if (ngpr > 0) ngpr--; else nslots++;
    }

  return nslots;
}
