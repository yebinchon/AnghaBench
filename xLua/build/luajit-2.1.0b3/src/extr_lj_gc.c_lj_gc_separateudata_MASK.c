#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  mmudata; } ;
struct TYPE_19__ {TYPE_2__ gc; } ;
typedef  TYPE_3__ global_State ;
struct TYPE_22__ {int /*<<< orphan*/  nextgc; } ;
struct TYPE_21__ {int /*<<< orphan*/  metatable; } ;
struct TYPE_17__ {int /*<<< orphan*/  nextgc; } ;
struct TYPE_20__ {TYPE_1__ gch; } ;
typedef  TYPE_4__ GCobj ;
typedef  int /*<<< orphan*/  GCRef ;

/* Variables and functions */
 int /*<<< orphan*/  MM_gc ; 
 TYPE_5__* FUNC0 (TYPE_4__*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

size_t FUNC11(global_State *g, int all)
{
  size_t m = 0;
  GCRef *p = &FUNC5(g)->nextgc;
  GCobj *o;
  while ((o = FUNC1(*p)) != NULL) {
    if (!(FUNC3(o) || all) || FUNC2(FUNC0(o))) {
      p = &o->gch.nextgc;  /* Nothing to do. */
    } else if (!FUNC4(g, FUNC10(FUNC0(o)->metatable), MM_gc)) {
      FUNC6(o);  /* Done, as there's no __gc metamethod. */
      p = &o->gch.nextgc;
    } else {  /* Otherwise move userdata to be finalized to mmudata list. */
      m += FUNC9(FUNC0(o));
      FUNC6(o);
      *p = o->gch.nextgc;
      if (FUNC1(g->gc.mmudata)) {  /* Link to end of mmudata list. */
	GCobj *root = FUNC1(g->gc.mmudata);
	FUNC8(o->gch.nextgc, root->gch.nextgc);
	FUNC7(root->gch.nextgc, o);
	FUNC7(g->gc.mmudata, o);
      } else {  /* Create circular list. */
	FUNC7(o->gch.nextgc, o);
	FUNC7(g->gc.mmudata, o);
      }
    }
  }
  return m;
}