#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int stacksize; int nci; struct TYPE_8__* twups; int /*<<< orphan*/ * openupval; int /*<<< orphan*/ * stack; int /*<<< orphan*/ * top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int lu_mem ;
struct TYPE_9__ {scalar_t__ gcstate; scalar_t__ gckind; TYPE_1__* twups; } ;
typedef  TYPE_2__ global_State ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/ * StkId ;
typedef  int /*<<< orphan*/  CallInfo ;

/* Variables and functions */
 scalar_t__ GCSinsideatomic ; 
 scalar_t__ KGC_EMERGENCY ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static lu_mem FUNC5 (global_State *g, lua_State *th) {
  StkId o = th->stack;
  if (o == NULL)
    return 1;  /* stack not completely built yet */
  FUNC2(g->gcstate == GCSinsideatomic ||
             th->openupval == NULL || FUNC0(th));
  for (; o < th->top; o++)  /* mark live elements in the stack */
    FUNC3(g, o);
  if (g->gcstate == GCSinsideatomic) {  /* final traversal? */
    StkId lim = th->stack + th->stacksize;  /* real end of stack */
    for (; o < lim; o++)  /* clear not-marked stack slice */
      FUNC4(o);
    /* 'remarkupvals' may have removed thread from 'twups' list */ 
    if (!FUNC0(th) && th->openupval != NULL) {
      th->twups = g->twups;  /* link it back to the list */
      g->twups = th;
    }
  }
  else if (g->gckind != KGC_EMERGENCY)
    FUNC1(th); /* do not change stack in emergency cycle */
  return (sizeof(lua_State) + sizeof(TValue) * th->stacksize +
          sizeof(CallInfo) * th->nci);
}