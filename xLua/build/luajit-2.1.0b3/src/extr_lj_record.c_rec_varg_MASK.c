#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int ptrdiff_t ;
struct TYPE_13__ {int maxslot; int* base; scalar_t__ framedepth; int bcskip; int /*<<< orphan*/  errinfo; TYPE_2__* L; TYPE_1__* pt; } ;
typedef  TYPE_3__ jit_State ;
typedef  int int32_t ;
struct TYPE_12__ {int /*<<< orphan*/ * base; } ;
struct TYPE_11__ {int numparams; } ;
typedef  int TRef ;
typedef  int /*<<< orphan*/  IRType ;
typedef  int BCReg ;

/* Variables and functions */
 int /*<<< orphan*/  BC_VARG ; 
 int FRAME_VARG ; 
 int IRCONV_INDEX ; 
 int IRCONV_INT_NUM ; 
 int IRSLOAD_FRAME ; 
 int IRSLOAD_READONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_IGC ; 
 int /*<<< orphan*/  IRT_PGC ; 
 int /*<<< orphan*/  IR_ADD ; 
 int /*<<< orphan*/  IR_AREF ; 
 int /*<<< orphan*/  IR_BSHL ; 
 int /*<<< orphan*/  IR_BSHR ; 
 int /*<<< orphan*/  IR_CONV ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  IR_GE ; 
 int /*<<< orphan*/  IR_LE ; 
 int /*<<< orphan*/  IR_LT ; 
 int /*<<< orphan*/  IR_SLOAD ; 
 int /*<<< orphan*/  IR_SUB ; 
 int /*<<< orphan*/  IR_VLOAD ; 
 int LJ_FR2 ; 
 int /*<<< orphan*/  LJ_TRERR_NYIBC ; 
 int REF_BASE ; 
 void* TREF_NIL ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (TYPE_3__*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 scalar_t__ FUNC20 (int) ; 

__attribute__((used)) static void FUNC21(jit_State *J, BCReg dst, ptrdiff_t nresults)
{
  int32_t numparams = J->pt->numparams;
  ptrdiff_t nvararg = FUNC6(J->L->base-1) - numparams - 1 - LJ_FR2;
  FUNC15(FUNC8(J->L->base-1));
  if (LJ_FR2 && dst > J->maxslot)
    J->base[dst-1] = 0;  /* Prevent resurrection of unrelated slot. */
  if (J->framedepth > 0) {  /* Simple case: varargs defined on-trace. */
    ptrdiff_t i;
    if (nvararg < 0) nvararg = 0;
    if (nresults == -1) {
      nresults = nvararg;
      J->maxslot = dst + (BCReg)nvararg;
    } else if (dst + nresults > J->maxslot) {
      J->maxslot = dst + (BCReg)nresults;
    }
    for (i = 0; i < nresults; i++)
      J->base[dst+i] = i < nvararg ? FUNC9(J, i - nvararg - 1 - LJ_FR2) : TREF_NIL;
  } else {  /* Unknown number of varargs passed to trace. */
    TRef fr = FUNC5(FUNC3(IR_SLOAD), LJ_FR2, IRSLOAD_READONLY|IRSLOAD_FRAME);
    int32_t frofs = 8*(1+LJ_FR2+numparams)+FRAME_VARG;
    if (nresults >= 0) {  /* Known fixed number of results. */
      ptrdiff_t i;
      if (nvararg > 0) {
	ptrdiff_t nload = nvararg >= nresults ? nresults : nvararg;
	TRef vbase;
	if (nvararg >= nresults)
	  FUNC5(FUNC2(IR_GE), fr, FUNC13(J, frofs+8*(int32_t)nresults));
	else
	  FUNC5(FUNC2(IR_EQ), fr,
		 FUNC13(J, (int32_t)FUNC7(J->L->base-1)));
	vbase = FUNC5(FUNC0(IR_SUB, IRT_IGC), REF_BASE, fr);
	vbase = FUNC5(FUNC0(IR_ADD, IRT_PGC), vbase, FUNC13(J, frofs-8));
	for (i = 0; i < nload; i++) {
	  IRType t = FUNC11(&J->L->base[i-1-LJ_FR2-nvararg]);
	  TRef aref = FUNC5(FUNC0(IR_AREF, IRT_PGC),
			     vbase, FUNC13(J, (int32_t)i));
	  TRef tr = FUNC5(FUNC1(IR_VLOAD, t), aref, 0);
	  if (FUNC10(t)) tr = FUNC4(t);  /* Canonicalize primitives. */
	  J->base[dst+i] = tr;
	}
      } else {
	FUNC5(FUNC2(IR_LE), fr, FUNC13(J, frofs));
	nvararg = 0;
      }
      for (i = nvararg; i < nresults; i++)
	J->base[dst+i] = TREF_NIL;
      if (dst + (BCReg)nresults > J->maxslot)
	J->maxslot = dst + (BCReg)nresults;
    } else if (FUNC17(J)) {  /* y = select(x, ...) */
      TRef tridx = J->base[dst-1];
      TRef tr = TREF_NIL;
      ptrdiff_t idx = FUNC12(J, tridx, &J->L->base[dst-1]);
      if (idx < 0) goto nyivarg;
      if (idx != 0 && !FUNC19(tridx))
	tridx = FUNC5(FUNC2(IR_CONV), tridx, IRCONV_INT_NUM|IRCONV_INDEX);
      if (idx != 0 && FUNC20(tridx)) {
	FUNC5(FUNC2(idx <= nvararg ? IR_GE : IR_LT),
	       fr, FUNC13(J, frofs+8*(int32_t)idx));
	frofs -= 8;  /* Bias for 1-based index. */
      } else if (idx <= nvararg) {  /* Compute size. */
	TRef tmp = FUNC5(FUNC3(IR_ADD), fr, FUNC13(J, -frofs));
	if (numparams)
	  FUNC5(FUNC2(IR_GE), tmp, FUNC13(J, 0));
	tr = FUNC5(FUNC3(IR_BSHR), tmp, FUNC13(J, 3));
	if (idx != 0) {
	  tridx = FUNC5(FUNC3(IR_ADD), tridx, FUNC13(J, -1));
	  FUNC16(J, tr, tridx, (uint32_t)nvararg);
	}
      } else {
	TRef tmp = FUNC13(J, frofs);
	if (idx != 0) {
	  TRef tmp2 = FUNC5(FUNC3(IR_BSHL), tridx, FUNC13(J, 3));
	  tmp = FUNC5(FUNC3(IR_ADD), tmp2, tmp);
	} else {
	  tr = FUNC13(J, 0);
	}
	FUNC5(FUNC2(IR_LT), fr, tmp);
      }
      if (idx != 0 && idx <= nvararg) {
	IRType t;
	TRef aref, vbase = FUNC5(FUNC0(IR_SUB, IRT_IGC), REF_BASE, fr);
	vbase = FUNC5(FUNC0(IR_ADD, IRT_PGC), vbase,
		       FUNC13(J, frofs-(8<<LJ_FR2)));
	t = FUNC11(&J->L->base[idx-2-LJ_FR2-nvararg]);
	aref = FUNC5(FUNC0(IR_AREF, IRT_PGC), vbase, tridx);
	tr = FUNC5(FUNC1(IR_VLOAD, t), aref, 0);
	if (FUNC10(t)) tr = FUNC4(t);  /* Canonicalize primitives. */
      }
      J->base[dst-2-LJ_FR2] = tr;
      J->maxslot = dst-1-LJ_FR2;
      J->bcskip = 2;  /* Skip CALLM + select. */
    } else {
    nyivarg:
      FUNC18(&J->errinfo, BC_VARG);
      FUNC14(J, LJ_TRERR_NYIBC);
    }
  }
}