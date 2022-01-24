#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * allgc; int /*<<< orphan*/ * tobefnz; } ;
typedef  TYPE_1__ global_State ;
struct TYPE_7__ {int /*<<< orphan*/  marked; int /*<<< orphan*/ * next; } ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 int /*<<< orphan*/  SEPARATED ; 
 TYPE_5__* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static GCObject *FUNC7 (global_State *g) {
  GCObject *o = g->tobefnz;  /* get first element */
  FUNC4(FUNC1(o));
  g->tobefnz = FUNC0(o)->next;  /* remove it from 'tobefnz' list */
  FUNC0(o)->next = g->allgc;  /* return it to 'allgc' list */
  g->allgc = o;
  FUNC6(FUNC0(o)->marked, SEPARATED);  /* mark that it is not in 'tobefnz' */
  FUNC4(!FUNC2(o));  /* see MOVE OLD rule */
  if (!FUNC3(g))  /* not keeping invariant? */
    FUNC5(g, o);  /* "sweep" object */
  return o;
}