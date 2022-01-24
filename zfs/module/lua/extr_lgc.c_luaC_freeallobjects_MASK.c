#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int size; scalar_t__ nuse; int /*<<< orphan*/ ** hash; } ;
struct TYPE_5__ {TYPE_1__ strt; int /*<<< orphan*/ * allgc; int /*<<< orphan*/ * finobj; int /*<<< orphan*/  gckind; int /*<<< orphan*/  currentwhite; } ;
typedef  TYPE_2__ global_State ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KGC_NORMAL ; 
 int /*<<< orphan*/  WHITEBITS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

void FUNC5 (lua_State *L) {
  global_State *g = FUNC0(L);
  int i;
  FUNC3(L, 1);  /* separate all objects with finalizers */
  FUNC2(g->finobj == NULL);
  FUNC1(L, 0);
  g->currentwhite = WHITEBITS; /* this "white" makes all objects look dead */
  g->gckind = KGC_NORMAL;
  FUNC4(L, &g->finobj);  /* finalizers can create objs. in 'finobj' */
  FUNC4(L, &g->allgc);
  for (i = 0; i < g->strt.size; i++)  /* free all string lists */
    FUNC4(L, &g->strt.hash[i]);
  FUNC2(g->strt.nuse == 0);
}