#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_29__ {int* snapmap; } ;
struct TYPE_28__ {TYPE_1__* J; TYPE_8__* T; } ;
struct TYPE_27__ {int i; int /*<<< orphan*/  t; } ;
struct TYPE_26__ {size_t mapofs; size_t nent; } ;
struct TYPE_24__ {int hi; int lo; } ;
struct TYPE_25__ {TYPE_2__ u32; } ;
struct TYPE_23__ {int /*<<< orphan*/  L; } ;
typedef  TYPE_3__ TValue ;
typedef  TYPE_4__ SnapShot ;
typedef  int SnapEntry ;
typedef  int /*<<< orphan*/  Reg ;
typedef  size_t MSize ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_5__ IRIns ;
typedef  scalar_t__ BCReg ;
typedef  TYPE_6__ ASMState ;

/* Variables and functions */
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LJ_64 ; 
 scalar_t__ LJ_DUALNUM ; 
 int LJ_FR2 ; 
 int LJ_TISNUM ; 
 int /*<<< orphan*/  REX_64 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RID_BASE ; 
 int /*<<< orphan*/  RSET_FPR ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int SNAP_CONT ; 
 int SNAP_FRAME ; 
 int SNAP_NORESTORE ; 
 int /*<<< orphan*/  XO_ARITHi ; 
 int /*<<< orphan*/  XO_MOVSDto ; 
 int /*<<< orphan*/  XO_MOVmi ; 
 int /*<<< orphan*/  XOg_OR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (TYPE_8__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 scalar_t__ FUNC22 (int) ; 
 scalar_t__ FUNC23 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC24(ASMState *as, SnapShot *snap)
{
  SnapEntry *map = &as->T->snapmap[snap->mapofs];
#if !LJ_FR2 || defined(LUA_USE_ASSERT)
  SnapEntry *flinks = &as->T->snapmap[FUNC20(as->T, snap)-1-LJ_FR2];
#endif
  MSize n, nent = snap->nent;
  /* Store the value of all modified slots to the Lua stack. */
  for (n = 0; n < nent; n++) {
    SnapEntry sn = map[n];
    BCReg s = FUNC22(sn);
    int32_t ofs = 8*((int32_t)s-1-LJ_FR2);
    IRRef ref = FUNC21(sn);
    IRIns *ir = FUNC0(ref);
    if ((sn & SNAP_NORESTORE))
      continue;
    if (FUNC13(ir->t)) {
      Reg src = FUNC18(as, ref, RSET_FPR);
      FUNC6(as, XO_MOVSDto, src, RID_BASE, ofs);
    } else {
      FUNC17(FUNC14(ir->t) || FUNC10(ir->t) ||
		 (LJ_DUALNUM && FUNC11(ir->t)));
      if (!FUNC8(ref)) {
	Reg src = FUNC18(as, ref, FUNC19(RSET_GPR, RID_BASE));
#if LJ_GC64
	if (irt_is64(ir->t)) {
	  /* TODO: 64 bit store + 32 bit load-modify-store is suboptimal. */
	  emit_u32(as, irt_toitype(ir->t) << 15);
	  emit_rmro(as, XO_ARITHi, XOg_OR, RID_BASE, ofs+4);
	} else if (LJ_DUALNUM && irt_isinteger(ir->t)) {
	  emit_movmroi(as, RID_BASE, ofs+4, LJ_TISNUM << 15);
	} else {
	  emit_movmroi(as, RID_BASE, ofs+4, (irt_toitype(ir->t)<<15)|0x7fff);
	}
#endif
	FUNC5(as, FUNC1(ir, src), RID_BASE, ofs);
#if LJ_GC64
      } else {
	TValue k;
	lj_ir_kvalue(as->J->L, &k, ir);
	if (tvisnil(&k)) {
	  emit_i32(as, -1);
	  emit_rmro(as, XO_MOVmi, REX_64, RID_BASE, ofs);
	} else {
	  emit_movmroi(as, RID_BASE, ofs+4, k.u32.hi);
	  emit_movmroi(as, RID_BASE, ofs, k.u32.lo);
	}
#else
      } else if (!FUNC14(ir->t)) {
	FUNC4(as, RID_BASE, ofs, ir->i);
#endif
      }
      if ((sn & (SNAP_CONT|SNAP_FRAME))) {
#if !LJ_FR2
	if (s != 0)  /* Do not overwrite link to previous frame. */
	  FUNC4(as, RID_BASE, ofs+4, (int32_t)(*flinks--));
#endif
#if !LJ_GC64
      } else {
	if (!(LJ_64 && FUNC12(ir->t)))
	  FUNC4(as, RID_BASE, ofs+4, FUNC15(ir->t));
#endif
      }
    }
    FUNC2(as);
  }
  FUNC17(map + nent == flinks);
}