#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ state; int /*<<< orphan*/  root; } ;
struct TYPE_21__ {TYPE_2__ gc; } ;
typedef  TYPE_3__ global_State ;
struct TYPE_19__ {int /*<<< orphan*/  nextgc; } ;
struct TYPE_23__ {TYPE_1__ gch; } ;
struct TYPE_22__ {int closed; int /*<<< orphan*/  tv; int /*<<< orphan*/  v; } ;
typedef  TYPE_4__ GCupval ;
typedef  TYPE_5__ GCobj ;

/* Variables and functions */
 scalar_t__ GCSatomic ; 
 scalar_t__ GCSfinalize ; 
 scalar_t__ GCSpause ; 
 scalar_t__ GCSpropagate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_5__*) ; 
 TYPE_5__* FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 

void FUNC14(global_State *g, GCupval *uv)
{
  GCobj *o = FUNC8(uv);
  /* Copy stack slot to upvalue itself and point to the copy. */
  FUNC0(FUNC6(g), &uv->tv, FUNC13(uv));
  FUNC11(uv->v, &uv->tv);
  uv->closed = 1;
  FUNC10(o->gch.nextgc, g->gc.root);
  FUNC9(g->gc.root, o);
  if (FUNC3(o)) {  /* A closed upvalue is never gray, so fix this. */
    if (g->gc.state == GCSpropagate || g->gc.state == GCSatomic) {
      FUNC2(o);  /* Make it black and preserve invariant. */
      if (FUNC12(&uv->tv))
	FUNC4(g, o, FUNC1(&uv->tv));
    } else {
      FUNC7(g, o);  /* Make it white, i.e. sweep the upvalue. */
      FUNC5(g->gc.state != GCSfinalize && g->gc.state != GCSpause);
    }
  }
}