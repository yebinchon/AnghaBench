#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  t; } ;
struct TYPE_5__ {int flags; } ;
typedef  scalar_t__ IRRef ;
typedef  TYPE_1__ CCallInfo ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 int CCI_CC_FASTCALL ; 
 int CCI_CC_MASK ; 
 int CCI_CC_THISCALL ; 
 int FUNC0 (TYPE_1__ const*) ; 
 TYPE_3__* FUNC1 (scalar_t__) ; 
 scalar_t__ LJ_ABI_WIN ; 
 int REGARG_NUMFPR ; 
 int REGARG_NUMGPR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(ASMState *as, const CCallInfo *ci, IRRef *args)
{
  uint32_t i, nargs = FUNC0(ci);
  int nslots = 0;
#if LJ_64
  if (LJ_ABI_WIN) {
    nslots = (int)(nargs*2);  /* Only matters for more than four args. */
  } else {
    int ngpr = REGARG_NUMGPR, nfpr = REGARG_NUMFPR;
    for (i = 0; i < nargs; i++)
      if (args[i] && irt_isfp(IR(args[i])->t)) {
	if (nfpr > 0) nfpr--; else nslots += 2;
      } else {
	if (ngpr > 0) ngpr--; else nslots += 2;
      }
  }
#else
  int ngpr = 0;
  if ((ci->flags & CCI_CC_MASK) == CCI_CC_FASTCALL)
    ngpr = 2;
  else if ((ci->flags & CCI_CC_MASK) == CCI_CC_THISCALL)
    ngpr = 1;
  for (i = 0; i < nargs; i++)
    if (args[i] && FUNC2(FUNC1(args[i])->t)) {
      nslots += FUNC3(FUNC1(args[i])->t) ? 2 : 1;
    } else {
      if (ngpr > 0) ngpr--; else nslots++;
    }
#endif
  return nslots;
}