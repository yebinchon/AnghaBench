#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_19__ ;
typedef  struct TYPE_21__   TYPE_18__ ;

/* Type definitions */
struct TYPE_26__ {TYPE_19__* J; } ;
struct TYPE_25__ {int i; int /*<<< orphan*/  t; } ;
struct TYPE_23__ {int hi; int lo; } ;
struct TYPE_24__ {TYPE_1__ u32; } ;
struct TYPE_22__ {int /*<<< orphan*/  L; } ;
struct TYPE_21__ {int /*<<< orphan*/  tmptv; } ;
typedef  TYPE_2__ TValue ;
typedef  int Reg ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_3__ IRIns ;
typedef  TYPE_4__ ASMState ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_18__* FUNC1 (TYPE_19__*) ; 
 scalar_t__ LJ_64 ; 
 int REX_64 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int RID_ESP ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  XO_ARITHi ; 
 int /*<<< orphan*/  XO_LEA ; 
 int XOg_OR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*) ; 
 int FUNC16 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC19(ASMState *as, Reg dest, IRRef ref)
{
  IRIns *ir = FUNC0(ref);
  if (FUNC12(ir->t)) {
    /* For numbers use the constant itself or a spill slot as a TValue. */
    if (FUNC9(ref))
      FUNC3(as, dest, FUNC8(ir));
    else
      FUNC6(as, XO_LEA, dest|REX_64, RID_ESP, FUNC17(as, ir));
  } else {
    /* Otherwise use g->tmptv to hold the TValue. */
#if LJ_GC64
    if (irref_isk(ref)) {
      TValue k;
      lj_ir_kvalue(as->J->L, &k, ir);
      emit_movmroi(as, dest, 4, k.u32.hi);
      emit_movmroi(as, dest, 0, k.u32.lo);
    } else {
      /* TODO: 64 bit store + 32 bit load-modify-store is suboptimal. */
      Reg src = ra_alloc1(as, ref, rset_exclude(RSET_GPR, dest));
      if (irt_is64(ir->t)) {
	emit_u32(as, irt_toitype(ir->t) << 15);
	emit_rmro(as, XO_ARITHi, XOg_OR, dest, 4);
      } else {
	/* Currently, no caller passes integers that might end up here. */
	emit_movmroi(as, dest, 4, (irt_toitype(ir->t) << 15));
      }
      emit_movtomro(as, REX_64IR(ir, src), dest, 0);
    }
#else
    if (!FUNC9(ref)) {
      Reg src = FUNC16(as, ref, FUNC18(RSET_GPR, dest));
      FUNC5(as, FUNC2(ir, src), dest, 0);
    } else if (!FUNC13(ir->t)) {
      FUNC4(as, dest, 0, ir->i);
    }
    if (!(LJ_64 && FUNC11(ir->t)))
      FUNC4(as, dest, 4, FUNC14(ir->t));
#endif
    FUNC3(as, dest, &FUNC1(as->J)->tmptv);
  }
}