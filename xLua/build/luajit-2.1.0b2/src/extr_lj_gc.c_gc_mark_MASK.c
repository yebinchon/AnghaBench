#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_15__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  gray; } ;
struct TYPE_24__ {TYPE_2__ gc; } ;
typedef  TYPE_3__ global_State ;
struct TYPE_22__ {int gct; int /*<<< orphan*/  gclist; } ;
struct TYPE_26__ {TYPE_1__ gch; } ;
struct TYPE_25__ {scalar_t__ closed; } ;
struct TYPE_21__ {int /*<<< orphan*/  env; int /*<<< orphan*/  metatable; } ;
typedef  TYPE_4__ GCupval ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  TYPE_5__ GCobj ;

/* Variables and functions */
 int LJ_TCDATA ; 
 int LJ_TFUNC ; 
 int LJ_TPROTO ; 
 int LJ_TSTR ; 
 int LJ_TTAB ; 
 int LJ_TTHREAD ; 
 int LJ_TTRACE ; 
 int LJ_TUDATA ; 
 int LJ_TUPVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_15__* FUNC3 (TYPE_5__*) ; 
 TYPE_4__* FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_5__*) ; 
 scalar_t__ FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC14(global_State *g, GCobj *o)
{
  int gct = o->gch.gct;
  FUNC8(FUNC7(o) && !FUNC6(g, o));
  FUNC13(o);
  if (FUNC0(gct == ~LJ_TUDATA)) {
    GCtab *mt = FUNC11(FUNC3(o)->metatable);
    FUNC5(o);  /* Userdata are never gray. */
    if (mt) FUNC1(g, mt);
    FUNC1(g, FUNC11(FUNC3(o)->env));
  } else if (FUNC0(gct == ~LJ_TUPVAL)) {
    GCupval *uv = FUNC4(o);
    FUNC2(g, FUNC12(uv));
    if (uv->closed)
      FUNC5(o);  /* Closed upvalues are never gray. */
  } else if (gct != ~LJ_TSTR && gct != ~LJ_TCDATA) {
    FUNC8(gct == ~LJ_TFUNC || gct == ~LJ_TTAB ||
	       gct == ~LJ_TTHREAD || gct == ~LJ_TPROTO || gct == ~LJ_TTRACE);
    FUNC10(o->gch.gclist, g->gc.gray);
    FUNC9(g->gc.gray, o);
  }
}