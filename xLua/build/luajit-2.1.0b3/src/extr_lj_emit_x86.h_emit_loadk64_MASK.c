#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86Op ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_16__ {scalar_t__ u64; } ;
struct TYPE_15__ {scalar_t__ curins; scalar_t__ stopins; int mcbot; int mclim; scalar_t__ mctop; int /*<<< orphan*/  J; } ;
struct TYPE_14__ {scalar_t__ i; } ;
typedef  int Reg ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 int MCLIM_REDZONE ; 
 int REX_64 ; 
 int /*<<< orphan*/  RID_RIP ; 
 int /*<<< orphan*/  RSET_FPR ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  XI_INT3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XO_MOV ; 
 int /*<<< orphan*/  XO_MOVSD ; 
 int /*<<< orphan*/  XO_XORPS ; 
 int /*<<< orphan*/  XOg_XOR ; 
 scalar_t__ FUNC1 (intptr_t) ; 
 intptr_t FUNC2 (TYPE_2__*,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_5__* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 intptr_t FUNC10 (TYPE_2__*,...) ; 
 intptr_t FUNC11 (TYPE_2__*,scalar_t__ const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13(ASMState *as, Reg r, IRIns *ir)
{
  Reg r64;
  x86Op xo;
  const uint64_t *k = &FUNC7(ir)->u64;
  if (FUNC12(RSET_FPR, r)) {
    r64 = r;
    xo = XO_MOVSD;
  } else {
    r64 = r | REX_64;
    xo = XO_MOV;
  }
  if (*k == 0) {
    FUNC6(as, FUNC12(RSET_FPR, r) ? XO_XORPS : FUNC0(XOg_XOR), r, r);
#if LJ_GC64
  } else if (checki32((intptr_t)k) || checki32(dispofs(as, k)) ||
	     (checki32(mcpofs(as, k)) && checki32(mctopofs(as, k)))) {
    emit_rma(as, xo, r64, k);
  } else {
    if (ir->i) {
      lua_assert(*k == *(uint64_t*)(as->mctop - ir->i));
    } else if (as->curins <= as->stopins && rset_test(RSET_GPR, r)) {
      emit_loadu64(as, r, *k);
      return;
    } else {
      /* If all else fails, add the FP constant at the MCode area bottom. */
      while ((uintptr_t)as->mcbot & 7) *as->mcbot++ = XI_INT3;
      *(uint64_t *)as->mcbot = *k;
      ir->i = (int32_t)(as->mctop - as->mcbot);
      as->mcbot += 8;
      as->mclim = as->mcbot + MCLIM_REDZONE;
      lj_mcode_commitbot(as->J, as->mcbot);
    }
    emit_rmro(as, xo, r64, RID_RIP, (int32_t)mcpofs(as, as->mctop - ir->i));
#else
  } else {
    FUNC4(as, xo, r64, k);
#endif
  }
}