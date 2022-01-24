#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_14__ {scalar_t__ gcstate; } ;
typedef  TYPE_1__ global_State ;
struct TYPE_15__ {int /*<<< orphan*/  gch; } ;
typedef  TYPE_2__ GCObject ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ GCSfinalize ; 
 scalar_t__ GCSpause ; 
 scalar_t__ GCSpropagate ; 
 scalar_t__ LUA_TTABLE ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8 (lua_State *L, GCObject *o, GCObject *v) {
  global_State *g = FUNC0(L);
  FUNC4(FUNC1(o) && FUNC3(v) && !FUNC2(g, v) && !FUNC2(g, o));
  FUNC4(g->gcstate != GCSfinalize && g->gcstate != GCSpause);
  FUNC4(FUNC7(&o->gch) != LUA_TTABLE);
  /* must keep invariant? */
  if (g->gcstate == GCSpropagate)
    FUNC6(g, v);  /* restore invariant */
  else  /* don't mind */
    FUNC5(g, o);  /* mark as white just to avoid other barriers */
}