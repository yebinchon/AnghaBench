#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_13__ {int /*<<< orphan*/  snapno; scalar_t__* cost; int /*<<< orphan*/  freeset; } ;
struct TYPE_12__ {int /*<<< orphan*/  s; scalar_t__ r; } ;
typedef  size_t Reg ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 size_t RID_MAX_GPR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC12(ASMState *as, Reg down, Reg up)
{
  IRRef ref = FUNC9(as->cost[up] = as->cost[down]);
  IRIns *ir = FUNC0(ref);
  ir->r = (uint8_t)up;
  as->cost[down] = 0;
  FUNC3((down < RID_MAX_GPR) == (up < RID_MAX_GPR));
  FUNC3(!FUNC11(as->freeset, down) && FUNC11(as->freeset, up));
  FUNC5(as, down);  /* 'down' is free ... */
  FUNC7(as, down);
  FUNC10(as->freeset, up);  /* ... and 'up' is now allocated. */
  FUNC8(as, up);
  FUNC1((as, "rename    $f $r $r", FUNC9(as->cost[up]), down, up));
  FUNC2(as, ir, down, up);  /* Backwards codegen needs inverse move. */
  if (!FUNC6(FUNC0(ref)->s)) {  /* Add the rename to the IR. */
    FUNC4(as, down, ref, as->snapno);
  }
}