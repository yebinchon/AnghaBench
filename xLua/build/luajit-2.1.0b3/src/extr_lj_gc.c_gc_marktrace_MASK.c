#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  gray; } ;
struct TYPE_17__ {TYPE_3__ gc; } ;
typedef  TYPE_4__ global_State ;
typedef  scalar_t__ TraceNo ;
struct TYPE_14__ {scalar_t__ traceno; } ;
struct TYPE_19__ {TYPE_1__ cur; } ;
struct TYPE_15__ {int /*<<< orphan*/  gclist; } ;
struct TYPE_18__ {TYPE_2__ gch; } ;
typedef  TYPE_5__ GCobj ;

/* Variables and functions */
 TYPE_7__* FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC8(global_State *g, TraceNo traceno)
{
  GCobj *o = FUNC3(FUNC6(FUNC0(g), traceno));
  FUNC2(traceno != FUNC0(g)->cur.traceno);
  if (FUNC1(o)) {
    FUNC7(o);
    FUNC5(o->gch.gclist, g->gc.gray);
    FUNC4(g->gc.gray, o);
  }
}