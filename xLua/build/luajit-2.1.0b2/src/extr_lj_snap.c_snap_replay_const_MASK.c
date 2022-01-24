#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jit_State ;
struct TYPE_7__ {int /*<<< orphan*/  t; int /*<<< orphan*/  i; int /*<<< orphan*/  o; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  int /*<<< orphan*/  IROp ;
typedef  TYPE_1__ IRIns ;

/* Variables and functions */
#define  IR_KGC 133 
#define  IR_KINT 132 
#define  IR_KINT64 131 
#define  IR_KNUM 130 
#define  IR_KPRI 129 
#define  IR_KPTR 128 
 int /*<<< orphan*/  TREF_NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static TRef FUNC12(jit_State *J, IRIns *ir)
{
  /* Only have to deal with constants that can occur in stack slots. */
  switch ((IROp)ir->o) {
  case IR_KPRI: return FUNC0(FUNC6(ir->t));
  case IR_KINT: return FUNC9(J, ir->i);
  case IR_KGC: return FUNC8(J, FUNC1(ir), FUNC5(ir->t));
  case IR_KNUM: return FUNC7(J, IR_KNUM, FUNC3(ir));
  case IR_KINT64: return FUNC7(J, IR_KINT64, FUNC2(ir));
  case IR_KPTR: return FUNC10(J, FUNC4(ir));  /* Continuation. */
  default: FUNC11(0); return TREF_NIL; break;
  }
}