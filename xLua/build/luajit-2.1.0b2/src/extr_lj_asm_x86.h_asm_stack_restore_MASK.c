#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_18__ {int* snapmap; } ;
struct TYPE_17__ {TYPE_4__* T; } ;
struct TYPE_16__ {int i; int /*<<< orphan*/  t; } ;
struct TYPE_15__ {size_t mapofs; size_t nent; } ;
typedef  TYPE_1__ SnapShot ;
typedef  int SnapEntry ;
typedef  int /*<<< orphan*/  Reg ;
typedef  size_t MSize ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_2__ IRIns ;
typedef  scalar_t__ BCReg ;
typedef  TYPE_3__ ASMState ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LJ_64 ; 
 scalar_t__ LJ_DUALNUM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RID_BASE ; 
 int /*<<< orphan*/  RSET_FPR ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int SNAP_CONT ; 
 int SNAP_FRAME ; 
 int SNAP_NORESTORE ; 
 int /*<<< orphan*/  XO_MOVSDto ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static void FUNC19(ASMState *as, SnapShot *snap)
{
  SnapEntry *map = &as->T->snapmap[snap->mapofs];
  SnapEntry *flinks = &as->T->snapmap[FUNC16(as->T, snap)-1];
  MSize n, nent = snap->nent;
  /* Store the value of all modified slots to the Lua stack. */
  for (n = 0; n < nent; n++) {
    SnapEntry sn = map[n];
    BCReg s = FUNC18(sn);
    int32_t ofs = 8*((int32_t)s-1);
    IRRef ref = FUNC17(sn);
    IRIns *ir = FUNC0(ref);
    if ((sn & SNAP_NORESTORE))
      continue;
    if (FUNC10(ir->t)) {
      Reg src = FUNC14(as, ref, RSET_FPR);
      FUNC5(as, XO_MOVSDto, src, RID_BASE, ofs);
    } else {
      FUNC13(FUNC11(ir->t) || FUNC7(ir->t) ||
		 (LJ_DUALNUM && FUNC8(ir->t)));
      if (!FUNC6(ref)) {
	Reg src = FUNC14(as, ref, FUNC15(RSET_GPR, RID_BASE));
	FUNC4(as, FUNC1(ir, src), RID_BASE, ofs);
      } else if (!FUNC11(ir->t)) {
	FUNC3(as, RID_BASE, ofs, ir->i);
      }
      if ((sn & (SNAP_CONT|SNAP_FRAME))) {
	if (s != 0)  /* Do not overwrite link to previous frame. */
	  FUNC3(as, RID_BASE, ofs+4, (int32_t)(*flinks--));
      } else {
	if (!(LJ_64 && FUNC9(ir->t)))
	  FUNC3(as, RID_BASE, ofs+4, FUNC12(ir->t));
      }
    }
    FUNC2(as);
  }
  FUNC13(map + nent == flinks);
}