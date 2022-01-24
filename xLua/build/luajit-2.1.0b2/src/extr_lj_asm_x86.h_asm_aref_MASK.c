#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ idx; scalar_t__ ofs; scalar_t__ base; } ;
struct TYPE_9__ {TYPE_1__ mrm; } ;
typedef  scalar_t__ Reg ;
typedef  int /*<<< orphan*/  IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  RID_MRM ; 
 scalar_t__ RID_NONE ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  XO_LEA ; 
 int /*<<< orphan*/  XO_MOV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(ASMState *as, IRIns *ir)
{
  Reg dest = FUNC3(as, ir, RSET_GPR);
  FUNC0(as, ir, RSET_GPR);
  if (!(as->mrm.idx == RID_NONE && as->mrm.ofs == 0))
    FUNC1(as, XO_LEA, dest, RID_MRM);
  else if (as->mrm.base != dest)
    FUNC2(as, XO_MOV, dest, as->mrm.base);
}