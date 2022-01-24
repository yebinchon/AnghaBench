#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_6__ {int /*<<< orphan*/  dispatch; } ;
struct TYPE_5__ {void** mcbot; void** mctop; void** mclim; int /*<<< orphan*/  J; } ;
typedef  void* MCode ;
typedef  int ExitNo ;
typedef  TYPE_1__ ASMState ;

/* Variables and functions */
 int EXITSTUBS_PER_GROUP ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int MCLIM_REDZONE ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RID_ESP ; 
 int /*<<< orphan*/  XI_JMP ; 
 int /*<<< orphan*/  XI_JMPs ; 
 int /*<<< orphan*/  XI_MOVmi ; 
 void* XI_PUSHi8 ; 
 int /*<<< orphan*/  XM_OFS8 ; 
 int /*<<< orphan*/  XM_SCALE1 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (void**,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ lj_vm_exit_handler ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static MCode *FUNC6(ASMState *as, ExitNo group)
{
  ExitNo i, groupofs = (group*EXITSTUBS_PER_GROUP) & 0xff;
  MCode *mxp = as->mcbot;
  MCode *mxpstart = mxp;
  if (mxp + (2+2)*EXITSTUBS_PER_GROUP+8+5 >= as->mctop)
    FUNC2(as);
  /* Push low byte of exitno for each exit stub. */
  *mxp++ = XI_PUSHi8; *mxp++ = (MCode)groupofs;
  for (i = 1; i < EXITSTUBS_PER_GROUP; i++) {
    *mxp++ = XI_JMPs; *mxp++ = (MCode)((2+2)*(EXITSTUBS_PER_GROUP - i) - 2);
    *mxp++ = XI_PUSHi8; *mxp++ = (MCode)(groupofs + i);
  }
  /* Push the high byte of the exitno for each exit stub group. */
  *mxp++ = XI_PUSHi8; *mxp++ = (MCode)((group*EXITSTUBS_PER_GROUP)>>8);
  /* Store DISPATCH at original stack slot 0. Account for the two push ops. */
  *mxp++ = XI_MOVmi;
  *mxp++ = FUNC1(XM_OFS8, 0, RID_ESP);
  *mxp++ = FUNC1(XM_SCALE1, RID_ESP, RID_ESP);
  *mxp++ = 2*sizeof(void *);
  *(int32_t *)mxp = FUNC5(FUNC0(as->J)->dispatch); mxp += 4;
  /* Jump to exit handler which fills in the ExitState. */
  *mxp++ = XI_JMP; mxp += 4;
  *((int32_t *)(mxp-4)) = FUNC3(mxp, (MCode *)(void *)lj_vm_exit_handler);
  /* Commit the code for this group (even if assembly fails later on). */
  FUNC4(as->J, mxp);
  as->mcbot = mxp;
  as->mclim = as->mcbot + MCLIM_REDZONE;
  return mxpstart;
}