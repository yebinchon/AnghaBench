#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ lua_Number ;
struct TYPE_5__ {int /*<<< orphan*/  pt; } ;
typedef  TYPE_1__ jit_State ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  int /*<<< orphan*/  cTValue ;
typedef  int /*<<< orphan*/  TRef ;
typedef  scalar_t__ IRType ;
typedef  scalar_t__ BCReg ;
typedef  scalar_t__ BCOp ;
typedef  int /*<<< orphan*/  const BCIns ;

/* Variables and functions */
 scalar_t__ BCMbase ; 
 scalar_t__ BCMdst ; 
 scalar_t__ BC_JMP ; 
 scalar_t__ BC_KNUM ; 
 scalar_t__ BC_KSHORT ; 
 scalar_t__ IRT_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 int FUNC2 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static TRef FUNC13(jit_State *J, const BCIns *endpc, BCReg slot, IRType t)
{
  /* This algorithm is rather simplistic and assumes quite a bit about
  ** how the bytecode is generated. It works fine for FORI initializers,
  ** but it won't necessarily work in other cases (e.g. iterator arguments).
  ** It doesn't do anything fancy, either (like backpropagating MOVs).
  */
  const BCIns *pc, *startpc = FUNC10(J->pt);
  for (pc = endpc-1; pc > startpc; pc--) {
    BCIns ins = *pc;
    BCOp op = FUNC3(ins);
    /* First try to find the last instruction that stores to this slot. */
    if (FUNC4(op) == BCMbase && FUNC0(ins) <= slot) {
      return 0;  /* Multiple results, e.g. from a CALL or KNIL. */
    } else if (FUNC4(op) == BCMdst && FUNC0(ins) == slot) {
      if (op == BC_KSHORT || op == BC_KNUM) {  /* Found const. initializer. */
	/* Now try to verify there's no forward jump across it. */
	const BCIns *kpc = pc;
	for (; pc > startpc; pc--)
	  if (FUNC3(*pc) == BC_JMP) {
	    const BCIns *target = pc+FUNC2(*pc)+1;
	    if (target > kpc && target <= endpc)
	      return 0;  /* Conditional assignment. */
	  }
	if (op == BC_KSHORT) {
	  int32_t k = (int32_t)(int16_t)FUNC1(ins);
	  return t == IRT_INT ? FUNC5(J, k) : FUNC6(J, (lua_Number)k);
	} else {
	  cTValue *tv = FUNC11(J->pt, FUNC1(ins));
	  if (t == IRT_INT) {
	    int32_t k = FUNC8(tv);
	    if (FUNC12(tv) || FUNC7(tv) == (lua_Number)k)  /* -0 is ok here. */
	      return FUNC5(J, k);
	    return 0;  /* Type mismatch. */
	  } else {
	    return FUNC6(J, FUNC9(tv));
	  }
	}
      }
      return 0;  /* Non-constant initializer. */
    }
  }
  return 0;  /* No assignment to this slot found? */
}