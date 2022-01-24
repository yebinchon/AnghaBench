#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_20__ {int /*<<< orphan*/ * top; } ;
typedef  TYPE_3__ lua_State ;
struct TYPE_19__ {int /*<<< orphan*/  threshold; } ;
struct TYPE_21__ {TYPE_2__ gc; } ;
typedef  TYPE_4__ global_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_18__ {int /*<<< orphan*/  gct; } ;
struct TYPE_22__ {TYPE_1__ gch; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_5__ GCobj ;
typedef  int /*<<< orphan*/  GCSize ;

/* Variables and functions */
 scalar_t__ LJ_FR2 ; 
 int /*<<< orphan*/  LJ_MAX_MEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(global_State *g, lua_State *L,
			      cTValue *mo, GCobj *o)
{
  /* Save and restore lots of state around the __gc callback. */
  uint8_t oldh = FUNC3(g);
  GCSize oldt = g->gc.threshold;
  int errcode;
  TValue *top;
  FUNC5(g);
  FUNC1(g);  /* Disable hooks and new traces during __gc. */
  g->gc.threshold = LJ_MAX_MEM;  /* Prevent GC steps. */
  top = L->top;
  FUNC0(L, top++, mo);
  if (LJ_FR2) FUNC8(top++);
  FUNC7(L, top, o, ~o->gch.gct);
  L->top = top+1;
  errcode = FUNC6(L, top, 1+0, -1);  /* Stack: |mo|o| -> | */
  FUNC2(g, oldh);
  g->gc.threshold = oldt;  /* Restore GC threshold. */
  if (errcode)
    FUNC4(L, errcode);  /* Propagate errors. */
}