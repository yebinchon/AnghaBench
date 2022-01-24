#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t ptrdiff_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_15__ {TYPE_3__* finalizer; } ;
struct TYPE_11__ {int /*<<< orphan*/  marked; } ;
struct TYPE_14__ {TYPE_1__ gch; } ;
struct TYPE_13__ {scalar_t__ hmask; int /*<<< orphan*/  metatable; int /*<<< orphan*/  node; } ;
struct TYPE_12__ {int /*<<< orphan*/  val; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_2__ Node ;
typedef  TYPE_3__ GCtab ;
typedef  TYPE_4__ GCobj ;
typedef  TYPE_5__ CTState ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ LJ_GC_CDATA_FIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(lua_State *L)
{
  global_State *g = FUNC0(L);
  CTState *cts = FUNC2(g);
  if (cts) {
    GCtab *t = cts->finalizer;
    Node *node = FUNC6(t->node);
    ptrdiff_t i;
    FUNC7(t->metatable);  /* Mark finalizer table as disabled. */
    for (i = (ptrdiff_t)t->hmask; i >= 0; i--)
      if (!FUNC10(&node[i].val) && FUNC9(&node[i].key)) {
	GCobj *o = FUNC3(&node[i].key);
	TValue tmp;
	FUNC5(g, o);
	o->gch.marked &= (uint8_t)~LJ_GC_CDATA_FIN;
	FUNC1(L, &tmp, &node[i].val);
	FUNC8(&node[i].val);
	FUNC4(g, L, &tmp, o);
      }
  }
}