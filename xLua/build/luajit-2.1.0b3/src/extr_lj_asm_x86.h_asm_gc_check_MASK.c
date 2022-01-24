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
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  total; int /*<<< orphan*/  threshold; } ;
struct TYPE_17__ {scalar_t__ gcsteps; int /*<<< orphan*/  J; } ;
typedef  int Reg ;
typedef  int /*<<< orphan*/  MCLabel ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  int /*<<< orphan*/  CCallInfo ;
typedef  TYPE_1__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  ASMREF_TMP1 ; 
 int /*<<< orphan*/  ASMREF_TMP2 ; 
 int /*<<< orphan*/  CC_B ; 
 int /*<<< orphan*/  CC_NE ; 
 int /*<<< orphan*/  GG_DISP2G ; 
 size_t IRCALL_lj_gc_step_jit ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int REX_64 ; 
 int REX_GC64 ; 
 int /*<<< orphan*/  RID_DISPATCH ; 
 int /*<<< orphan*/  RID_RET ; 
 int /*<<< orphan*/  RSET_SCRATCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XO_LEA ; 
 int /*<<< orphan*/  XO_TEST ; 
 int /*<<< orphan*/  XOg_CMP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ gc ; 
 int /*<<< orphan*/ * lj_ir_callinfo ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(ASMState *as)
{
  const CCallInfo *ci = &lj_ir_callinfo[IRCALL_lj_gc_step_jit];
  IRRef args[2];
  MCLabel l_end;
  Reg tmp;
  FUNC13(as, RSET_SCRATCH);
  l_end = FUNC6(as);
  /* Exit trace if in GCSatomic or GCSfinalize. Avoids syncing GC objects. */
  FUNC3(as, CC_NE);  /* Assumes asm_snap_prep() already done. */
  FUNC11(as, XO_TEST, RID_RET, RID_RET);
  args[0] = ASMREF_TMP1;  /* global_State *g */
  args[1] = ASMREF_TMP2;  /* MSize steps     */
  FUNC2(as, ci, args);
  tmp = FUNC14(as, ASMREF_TMP1);
#if LJ_GC64
  emit_rmro(as, XO_LEA, tmp|REX_64, RID_DISPATCH, GG_DISP2G);
#else
  FUNC7(as, tmp, FUNC0(as->J));
#endif
  FUNC8(as, FUNC14(as, ASMREF_TMP2), as->gcsteps);
  /* Jump around GC step if GC total < GC threshold. */
  FUNC12(as, CC_B, l_end);
  FUNC9(as, FUNC1(XOg_CMP), tmp|REX_GC64, gc.threshold);
  FUNC5(as, tmp, gc.total);
  as->gcsteps = 0;
  FUNC4(as);
}