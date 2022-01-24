#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
struct TYPE_14__ {TYPE_1__* T; int /*<<< orphan*/  ir; int /*<<< orphan*/  J; int /*<<< orphan*/  snapno; scalar_t__* cost; int /*<<< orphan*/  freeset; } ;
struct TYPE_13__ {int /*<<< orphan*/  s; void* r; } ;
struct TYPE_12__ {int /*<<< orphan*/  ir; } ;
typedef  size_t Reg ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_2__ IRIns ;
typedef  TYPE_3__ ASMState ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_NIL ; 
 int /*<<< orphan*/  IR_RENAME ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 size_t RID_MAX_GPR ; 
 int /*<<< orphan*/  SPS_NONE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(ASMState *as, Reg down, Reg up)
{
  IRRef ren, ref = FUNC11(as->cost[up] = as->cost[down]);
  IRIns *ir = FUNC0(ref);
  ir->r = (uint8_t)up;
  as->cost[down] = 0;
  FUNC6((down < RID_MAX_GPR) == (up < RID_MAX_GPR));
  FUNC6(!FUNC13(as->freeset, down) && FUNC13(as->freeset, up));
  FUNC7(as, down);  /* 'down' is free ... */
  FUNC9(as, down);
  FUNC12(as->freeset, up);  /* ... and 'up' is now allocated. */
  FUNC10(as, up);
  FUNC2((as, "rename    $f $r $r", FUNC11(as->cost[up]), down, up));
  FUNC3(as, ir, down, up);  /* Backwards codegen needs inverse move. */
  if (!FUNC8(FUNC0(ref)->s)) {  /* Add the rename to the IR. */
    FUNC5(as->J, FUNC1(IR_RENAME, IRT_NIL), ref, as->snapno);
    ren = FUNC14(FUNC4(as->J));
    as->ir = as->T->ir;  /* The IR may have been reallocated. */
    FUNC0(ren)->r = (uint8_t)down;
    FUNC0(ren)->s = SPS_NONE;
  }
}