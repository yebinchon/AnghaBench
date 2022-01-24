#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ state; } ;
struct TYPE_18__ {TYPE_2__ gc; } ;
typedef  TYPE_3__ global_State ;
struct TYPE_16__ {int /*<<< orphan*/  gct; } ;
struct TYPE_19__ {TYPE_1__ gch; } ;
typedef  TYPE_4__ GCobj ;

/* Variables and functions */
 scalar_t__ GCSatomic ; 
 scalar_t__ GCSfinalize ; 
 scalar_t__ GCSpause ; 
 scalar_t__ GCSpropagate ; 
 int /*<<< orphan*/  LJ_TTAB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*) ; 

void FUNC6(global_State *g, GCobj *o, GCobj *v)
{
  FUNC4(FUNC1(o) && FUNC3(v) && !FUNC2(g, v) && !FUNC2(g, o));
  FUNC4(g->gc.state != GCSfinalize && g->gc.state != GCSpause);
  FUNC4(o->gch.gct != ~LJ_TTAB);
  /* Preserve invariant during propagation. Otherwise it doesn't matter. */
  if (g->gc.state == GCSpropagate || g->gc.state == GCSatomic)
    FUNC0(g, v);  /* Move frontier forward. */
  else
    FUNC5(g, o);  /* Make it white to avoid the following barrier. */
}