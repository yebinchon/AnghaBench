#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int stacksize; int /*<<< orphan*/  env; int /*<<< orphan*/  stack; int /*<<< orphan*/ * top; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_11__ {scalar_t__ state; } ;
struct TYPE_13__ {TYPE_1__ gc; } ;
typedef  TYPE_3__ global_State ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 scalar_t__ GCSatomic ; 
 int LJ_FR2 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(global_State *g, lua_State *th)
{
  TValue *o, *top = th->top;
  for (o = FUNC6(th->stack)+1+LJ_FR2; o < top; o++)
    FUNC1(g, o);
  if (g->gc.state == GCSatomic) {
    top = FUNC6(th->stack) + th->stacksize;
    for (; o < top; o++)  /* Clear unmarked slots. */
      FUNC4(o);
  }
  FUNC0(g, FUNC5(th->env));
  FUNC3(th, FUNC2(g, th));
}