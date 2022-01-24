#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
struct TYPE_33__ {size_t nins; TYPE_1__* ir; } ;
struct TYPE_35__ {int flags; scalar_t__ parent; int /*<<< orphan*/  loopref; TYPE_2__ cur; } ;
typedef  TYPE_4__ jit_State ;
struct TYPE_38__ {int flags; scalar_t__ curins; scalar_t__ gcsteps; scalar_t__ stopins; scalar_t__ freeset; int /*<<< orphan*/ * mcp; int /*<<< orphan*/ * mctop; int /*<<< orphan*/  loopref; int /*<<< orphan*/ * mcloop; TYPE_4__* J; int /*<<< orphan*/ * parent; TYPE_6__* T; int /*<<< orphan*/  fuseref; int /*<<< orphan*/  sectref; scalar_t__ topslot; int /*<<< orphan*/ * flagmcp; int /*<<< orphan*/ * mcp_prev; int /*<<< orphan*/ * realign; scalar_t__ mcbot; scalar_t__ mclim; scalar_t__ loopinv; int /*<<< orphan*/  ir; } ;
struct TYPE_37__ {scalar_t__ nins; int /*<<< orphan*/ * mcode; void* szmcode; int /*<<< orphan*/  link; void* mcloop; TYPE_3__* snap; int /*<<< orphan*/  ir; } ;
struct TYPE_36__ {int /*<<< orphan*/  t; } ;
struct TYPE_34__ {scalar_t__ ref; } ;
struct TYPE_32__ {int /*<<< orphan*/  o; } ;
typedef  void* MSize ;
typedef  int /*<<< orphan*/  MCode ;
typedef  TYPE_5__ IRIns ;
typedef  TYPE_6__ GCtrace ;
typedef  TYPE_7__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_DISABLED ; 
 TYPE_5__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  IR_NOP ; 
 int JIT_F_OPT_DCE ; 
 int JIT_F_OPT_FUSE ; 
 scalar_t__ LJ_32 ; 
 int /*<<< orphan*/  LJ_TRERR_BADRA ; 
 scalar_t__ MCLIM_REDZONE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ RSET_ALL ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 size_t FUNC20 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC21 (TYPE_4__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC27 (TYPE_4__*,scalar_t__) ; 

void FUNC28(jit_State *J, GCtrace *T)
{
  ASMState as_;
  ASMState *as = &as_;
  MCode *origtop;

  /* Ensure an initialized instruction beyond the last one for HIOP checks. */
  J->cur.nins = FUNC20(J);
  J->cur.ir[J->cur.nins].o = IR_NOP;

  /* Setup initial state. Copy some fields to reduce indirections. */
  as->J = J;
  as->T = T;
  as->ir = T->ir;
  as->flags = J->flags;
  as->loopref = J->loopref;
  as->realign = NULL;
  as->loopinv = 0;
  as->parent = J->parent ? FUNC27(J, J->parent) : NULL;

  /* Reserve MCode memory. */
  as->mctop = origtop = FUNC21(J, &as->mcbot);
  as->mcp = as->mctop;
  as->mclim = as->mcbot + MCLIM_REDZONE;
  FUNC11(as);

  do {
    as->mcp = as->mctop;
#ifdef LUA_USE_ASSERT
    as->mcp_prev = as->mcp;
#endif
    as->curins = T->nins;
    FUNC4();
    FUNC1((as, "===== STOP ====="));

    /* General trace setup. Emit tail of trace. */
    FUNC15(as);
    as->mcloop = NULL;
    as->flagmcp = NULL;
    as->topslot = 0;
    as->gcsteps = 0;
    as->sectref = as->loopref;
    as->fuseref = (as->flags & JIT_F_OPT_FUSE) ? as->loopref : FUSE_DISABLED;
    FUNC10(as);
    if (!as->loopref)
      FUNC14(as);

    /* Assemble a trace in linear backwards order. */
    for (as->curins--; as->curins > as->stopins; as->curins--) {
      IRIns *ir = FUNC0(as->curins);
      FUNC24(!(LJ_32 && FUNC19(ir->t)));  /* Handled by SPLIT. */
      if (!FUNC26(ir) && !FUNC17(ir) && (as->flags & JIT_F_OPT_DCE))
	continue;  /* Dead-code elimination can be soooo easy. */
      if (FUNC18(ir->t))
	FUNC12(as);
      FUNC3();
      FUNC16(as);
      FUNC8(as, ir);
    }
  } while (as->realign);  /* Retry in case the MCode needs to be realigned. */

  /* Emit head of trace. */
  FUNC3();
  FUNC16(as);
  if (as->gcsteps > 0) {
    as->curins = as->T->snap[0].ref;
    FUNC12(as);  /* The GC check is a guard. */
    FUNC5(as);
  }
  FUNC25(as);
  if (as->parent)
    FUNC7(as);
  else
    FUNC6(as);
  FUNC9(as);

  FUNC1((as, "===== START ===="));
  FUNC2();
  if (as->freeset != RSET_ALL)
    FUNC23(as->J, LJ_TRERR_BADRA);  /* Ouch! Should never happen. */

  /* Set trace entry point before fixing up tail to allow link to self. */
  T->mcode = as->mcp;
  T->mcloop = as->mcloop ? (MSize)((char *)as->mcloop - (char *)as->mcp) : 0;
  if (!as->loopref)
    FUNC13(as, T->link);  /* Note: this may change as->mctop! */
  T->szmcode = (MSize)((char *)as->mctop - (char *)as->mcp);
  FUNC22(T->mcode, origtop);
}