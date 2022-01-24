#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  jit_State ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_7__ {scalar_t__ i; } ;
struct TYPE_6__ {scalar_t__ ot; int /*<<< orphan*/  op2; int /*<<< orphan*/  t; } ;
struct TYPE_5__ {int* stack; int* sp; int t; int mode; } ;
typedef  int NarrowIns ;
typedef  TYPE_1__ NarrowConv ;
typedef  int /*<<< orphan*/  IRRef1 ;
typedef  int IRRef ;
typedef  scalar_t__ IROpT ;

/* Variables and functions */
 TYPE_4__* FUNC0 (scalar_t__) ; 
 int IRCONV_CHECK ; 
 int IRCONV_CONVMASK ; 
 int IRCONV_INDEX ; 
 int IRCONV_SEXT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int IRT_I64 ; 
 int IRT_INT ; 
 scalar_t__ IR_ADD ; 
 scalar_t__ IR_ADDOV ; 
 int /*<<< orphan*/  IR_CONV ; 
 scalar_t__ NARROW_CONV ; 
 scalar_t__ NARROW_INT ; 
 scalar_t__ NARROW_REF ; 
 scalar_t__ NARROW_SEXT ; 
 int FUNC3 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* fins ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static IRRef FUNC13(jit_State *J, NarrowConv *nc)
{
  /* The fins fields must be saved now -- emitir() overwrites them. */
  IROpT guardot = FUNC6(fins->t) ? FUNC2(IR_ADDOV-IR_ADD, 0) : 0;
  IROpT convot = fins->ot;
  IRRef1 convop2 = fins->op2;
  NarrowIns *next = nc->stack;  /* List of instructions from backpropagation. */
  NarrowIns *last = nc->sp;
  NarrowIns *sp = nc->stack;  /* Recycle the stack to store operands. */
  while (next < last) {  /* Simple stack machine to process the ins. list. */
    NarrowIns ref = *next++;
    IROpT op = FUNC11(ref);
    if (op == NARROW_REF) {
      *sp++ = ref;
    } else if (op == NARROW_CONV) {
      *sp++ = FUNC4(convot, ref, convop2);  /* Raw emit avoids a loop. */
    } else if (op == NARROW_SEXT) {
      FUNC9(sp >= nc->stack+1);
      sp[-1] = FUNC3(FUNC1(IR_CONV, IRT_I64), sp[-1],
		      (IRT_I64<<5)|IRT_INT|IRCONV_SEXT);
    } else if (op == NARROW_INT) {
      FUNC9(next < last);
      *sp++ = nc->t == IRT_I64 ?
	      FUNC8(J, (int64_t)(int32_t)*next++) :
	      FUNC7(J, *next++);
    } else {  /* Regular IROpT. Pops two operands and pushes one result. */
      IRRef mode = nc->mode;
      FUNC9(sp >= nc->stack+2);
      sp--;
      /* Omit some overflow checks for array indexing. See comments above. */
      if ((mode & IRCONV_CONVMASK) == IRCONV_INDEX) {
	if (next == last && FUNC5(FUNC12(sp[0])) &&
	  (uint32_t)FUNC0(FUNC12(sp[0]))->i + 0x40000000u < 0x80000000u)
	  guardot = 0;
	else  /* Otherwise cache a stronger check. */
	  mode += IRCONV_CHECK-IRCONV_INDEX;
      }
      sp[-1] = FUNC3(op+guardot, sp[-1], sp[0]);
      /* Add to cache. */
      if (FUNC12(ref))
	FUNC10(J, FUNC12(ref), FUNC12(sp[-1]), mode);
    }
  }
  FUNC9(sp == nc->stack+1);
  return nc->stack[0];
}