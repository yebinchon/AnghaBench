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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {scalar_t__ gcstate; scalar_t__ tobefnz; } ;
typedef  TYPE_1__ global_State ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int GCFINALIZENUM ; 
 scalar_t__ GCSpause ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

void FUNC5 (lua_State *L) {
  global_State *g = FUNC0(L);
  int i;
  if (FUNC4(g)) FUNC2(L);
  else FUNC3(L);
  /* run a few finalizers (or all of them at the end of a collect cycle) */
  for (i = 0; g->tobefnz && (i < GCFINALIZENUM || g->gcstate == GCSpause); i++)
    FUNC1(L, 1);  /* call one finalizer */
}