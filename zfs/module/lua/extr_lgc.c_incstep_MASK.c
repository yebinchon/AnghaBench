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
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ lu_mem ;
typedef  int l_mem ;
struct TYPE_5__ {int GCdebt; int gcstepmul; scalar_t__ gcstate; int /*<<< orphan*/  GCestimate; } ;
typedef  TYPE_1__ global_State ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int GCSTEPSIZE ; 
 scalar_t__ GCSpause ; 
 int MAX_LMEM ; 
 int STEPMULADJ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 (lua_State *L) {
  global_State *g = FUNC0(L);
  l_mem debt = g->GCdebt;
  int stepmul = g->gcstepmul;
  if (stepmul < 40) stepmul = 40;  /* avoid ridiculous low values (and 0) */
  /* convert debt from Kb to 'work units' (avoid zero debt and overflows) */
  debt = (debt / STEPMULADJ) + 1;
  debt = (debt < MAX_LMEM / stepmul) ? debt * stepmul : MAX_LMEM;
  do {  /* always perform at least one single step */
    lu_mem work = FUNC3(L);  /* do some work */
    debt -= work;
  } while (debt > -GCSTEPSIZE && g->gcstate != GCSpause);
  if (g->gcstate == GCSpause)
    FUNC2(g, g->GCestimate);  /* pause until next cycle */
  else {
    debt = (debt / stepmul) * STEPMULADJ;  /* convert 'work units' to Kb */
    FUNC1(g, debt);
  }
}