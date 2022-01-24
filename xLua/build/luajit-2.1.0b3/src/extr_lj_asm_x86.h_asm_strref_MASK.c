#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ base; scalar_t__ idx; int /*<<< orphan*/  ofs; } ;
struct TYPE_10__ {TYPE_1__ mrm; } ;
typedef  int Reg ;
typedef  int /*<<< orphan*/  IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 int REX_GC64 ; 
 int /*<<< orphan*/  RID_MRM ; 
 scalar_t__ RID_NONE ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XO_LEA ; 
 int /*<<< orphan*/  XOg_ADD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(ASMState *as, IRIns *ir)
{
  Reg dest = FUNC5(as, ir, RSET_GPR);
  FUNC1(as, ir, RSET_GPR);
  if (as->mrm.base == RID_NONE)
    FUNC3(as, dest, as->mrm.ofs);
  else if (as->mrm.base == dest && as->mrm.idx == RID_NONE)
    FUNC2(as, FUNC0(XOg_ADD), dest|REX_GC64, as->mrm.ofs);
  else
    FUNC4(as, XO_LEA, dest|REX_GC64, RID_MRM);
}