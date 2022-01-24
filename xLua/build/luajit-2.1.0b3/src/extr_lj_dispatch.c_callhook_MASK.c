#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int base; int /*<<< orphan*/  stack; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  (* lua_Hook ) (TYPE_1__*,TYPE_3__*) ;
struct TYPE_18__ {int event; int i_ci; int /*<<< orphan*/  currentline; } ;
typedef  TYPE_3__ lua_Debug ;
struct TYPE_19__ {int /*<<< orphan*/  cur_L; int /*<<< orphan*/  (* hookf ) (TYPE_1__*,TYPE_3__*) ;} ;
typedef  TYPE_5__ global_State ;
typedef  int /*<<< orphan*/  BCLine ;

/* Variables and functions */
 TYPE_5__* FUNC0 (TYPE_1__*) ; 
 scalar_t__ LUA_MINSTACK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(lua_State *L, int event, BCLine line)
{
  global_State *g = FUNC0(L);
  lua_Hook hookf = g->hookf;
  if (hookf && !FUNC1(g)) {
    lua_Debug ar;
    FUNC7(g);  /* Abort recording on any hook call. */
    ar.event = event;
    ar.currentline = line;
    /* Top frame, nextframe = NULL. */
    ar.i_ci = (int)((L->base-1) - FUNC11(L->stack));
    FUNC6(L, 1+LUA_MINSTACK);
#if LJ_HASPROFILE && !LJ_PROFILE_SIGPROF
    lj_profile_hook_enter(g);
#else
    FUNC2(g);
#endif
    hookf(L, &ar);
    FUNC8(FUNC1(g));
    FUNC10(g->cur_L, FUNC9(L));
#if LJ_HASPROFILE && !LJ_PROFILE_SIGPROF
    lj_profile_hook_leave(g);
#else
    FUNC3(g);
#endif
  }
}