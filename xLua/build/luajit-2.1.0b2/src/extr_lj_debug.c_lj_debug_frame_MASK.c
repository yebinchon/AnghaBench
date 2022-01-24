#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * base; int /*<<< orphan*/  stack; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  cTValue ;

/* Variables and functions */
 int LJ_FR2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

cTValue *FUNC7(lua_State *L, int level, int *size)
{
  cTValue *frame, *nextframe, *bot = FUNC6(L->stack)+LJ_FR2;
  /* Traverse frames backwards. */
  for (nextframe = frame = L->base-1; frame > bot; ) {
    if (FUNC0(frame) == FUNC5(L))
      level++;  /* Skip dummy frames. See lj_err_optype_call(). */
    if (level-- == 0) {
      *size = (int)(nextframe - frame);
      return frame;  /* Level found. */
    }
    nextframe = frame;
    if (FUNC1(frame)) {
      frame = FUNC4(frame);
    } else {
      if (FUNC2(frame))
	level++;  /* Skip vararg pseudo-frame. */
      frame = FUNC3(frame);
    }
  }
  *size = level;
  return NULL;  /* Level not found. */
}