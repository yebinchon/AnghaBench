#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {uintptr_t u64; } ;
struct TYPE_19__ {int /*<<< orphan*/  freeset; } ;
struct TYPE_18__ {scalar_t__ o; uintptr_t i; int /*<<< orphan*/  t; int /*<<< orphan*/  r; int /*<<< orphan*/  s; } ;
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
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,uintptr_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,uintptr_t) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 TYPE_8__* FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jit_base ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 uintptr_t FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Reg FUNC21(ASMState *as, IRRef ref)
{
  IRIns *ir;
  Reg r;
  if (FUNC15(ref)) {
    r = FUNC17(ref);
    FUNC11(!FUNC20(as->freeset, r));
    FUNC12(as, r);
    FUNC18(as, r);
#if LJ_64
    emit_loadu64(as, r, ra_krefk(as, ref));
#else
    FUNC4(as, r, FUNC16(as, ref));
#endif
    return r;
  }
  ir = FUNC0(ref);
  r = ir->r;
  FUNC11(FUNC13(r) && !FUNC14(ir->s));
  FUNC12(as, r);
  FUNC18(as, r);
  ir->r = RID_INIT;  /* Do not keep any hint. */
  FUNC1((as, "remat     $i $r", ir, r));
#if !LJ_SOFTFP
  if (ir->o == IR_KNUM) {
    FUNC5(as, r, ir);
  } else
#endif
  if (FUNC2(REF_BASE) && ir->o == IR_BASE) {
    FUNC19(ir->r, RID_BASE);  /* Restore BASE register hint. */
    FUNC3(as, r, jit_base);
  } else if (FUNC2(ASMREF_L) && ir->o == IR_KPRI) {
    FUNC11(FUNC10(ir->t));  /* REF_NIL stores ASMREF_L register. */
    FUNC3(as, r, cur_L);
#if LJ_64
  } else if (ir->o == IR_KINT64) {
    emit_loadu64(as, r, ir_kint64(ir)->u64);
#if LJ_GC64
  } else if (ir->o == IR_KGC) {
    emit_loadu64(as, r, (uintptr_t)ir_kgc(ir));
  } else if (ir->o == IR_KPTR || ir->o == IR_KKPTR) {
    emit_loadu64(as, r, (uintptr_t)ir_kptr(ir));
#endif
#endif
  } else {
    FUNC11(ir->o == IR_KINT || ir->o == IR_KGC ||
	       ir->o == IR_KPTR || ir->o == IR_KKPTR || ir->o == IR_KNULL);
    FUNC4(as, r, ir->i);
  }
  return r;
}