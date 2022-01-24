#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  u64; } ;
struct TYPE_17__ {int /*<<< orphan*/  freeset; } ;
struct TYPE_16__ {scalar_t__ o; int /*<<< orphan*/  i; int /*<<< orphan*/  t; int /*<<< orphan*/  r; int /*<<< orphan*/  s; } ;
typedef  int /*<<< orphan*/  Reg ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  ASMREF_L ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IR_BASE ; 
 scalar_t__ IR_KGC ; 
 scalar_t__ IR_KINT ; 
 scalar_t__ IR_KINT64 ; 
 scalar_t__ IR_KKPTR ; 
 scalar_t__ IR_KNULL ; 
 scalar_t__ IR_KNUM ; 
 scalar_t__ IR_KPRI ; 
 scalar_t__ IR_KPTR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  REF_BASE ; 
 int /*<<< orphan*/  RID_BASE ; 
 int /*<<< orphan*/  RID_INIT ; 
 int /*<<< orphan*/  cur_L ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jit_base ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Reg FUNC20(ASMState *as, IRRef ref)
{
  IRIns *ir;
  Reg r;
  if (FUNC14(ref)) {
    r = FUNC16(ref);
    FUNC10(!FUNC19(as->freeset, r));
    FUNC11(as, r);
    FUNC17(as, r);
    FUNC4(as, r, FUNC15(as, ref));
    return r;
  }
  ir = FUNC0(ref);
  r = ir->r;
  FUNC10(FUNC12(r) && !FUNC13(ir->s));
  FUNC11(as, r);
  FUNC17(as, r);
  ir->r = RID_INIT;  /* Do not keep any hint. */
  FUNC1((as, "remat     $i $r", ir, r));
#if !LJ_SOFTFP
  if (ir->o == IR_KNUM) {
    FUNC5(as, r, FUNC8(ir));
  } else
#endif
  if (FUNC2(REF_BASE) && ir->o == IR_BASE) {
    FUNC18(ir->r, RID_BASE);  /* Restore BASE register hint. */
    FUNC3(as, r, jit_base);
  } else if (FUNC2(ASMREF_L) && ir->o == IR_KPRI) {
    FUNC10(FUNC9(ir->t));  /* REF_NIL stores ASMREF_L register. */
    FUNC3(as, r, cur_L);
#if LJ_64
  } else if (ir->o == IR_KINT64) {
    emit_loadu64(as, r, ir_kint64(ir)->u64);
#endif
  } else {
    FUNC10(ir->o == IR_KINT || ir->o == IR_KGC ||
	       ir->o == IR_KPTR || ir->o == IR_KKPTR || ir->o == IR_KNULL);
    FUNC4(as, r, ir->i);
  }
  return r;
}