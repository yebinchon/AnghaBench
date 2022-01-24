#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {int /*<<< orphan*/ * finobj; int /*<<< orphan*/ * allgc; int /*<<< orphan*/ ** sweepgc; } ;
typedef  TYPE_1__ global_State ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_10__ {int /*<<< orphan*/  marked; int /*<<< orphan*/ * next; } ;
typedef  TYPE_2__ GCheader ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEPARATED ; 
 int /*<<< orphan*/  TM_GC ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC12 (lua_State *L, GCObject *o, Table *mt) {
  global_State *g = FUNC0(L);
  if (FUNC11(FUNC1(o)->marked, SEPARATED) || /* obj. is already separated... */
      FUNC3(o) ||                           /* ... or is finalized... */
      FUNC2(g, mt, TM_GC) == NULL)                /* or has no finalizer? */
    return;  /* nothing to be done */
  else {  /* move 'o' to 'finobj' list */
    GCObject **p;
    GCheader *ho = FUNC1(o);
    if (g->sweepgc == &ho->next) {  /* avoid removing current sweep object */
      FUNC7(FUNC4(g));
      g->sweepgc = FUNC10(L, g->sweepgc, NULL);
    }
    /* search for pointer pointing to 'o' */
    for (p = &g->allgc; *p != o; p = &FUNC1(*p)->next) { /* empty */ }
    *p = ho->next;  /* remove 'o' from root list */
    ho->next = g->finobj;  /* link it in list 'finobj' */
    g->finobj = o;
    FUNC6(ho->marked, SEPARATED);  /* mark it as such */
    if (!FUNC5(g))  /* not keeping invariant? */
      FUNC8(g, o);  /* "sweep" object */
    else
      FUNC9(o);  /* see MOVE OLD rule */
  }
}