#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  errfunc; scalar_t__ nny; int /*<<< orphan*/  allowhook; TYPE_4__* ci; } ;
typedef  TYPE_3__ lua_State ;
struct TYPE_12__ {int status; int /*<<< orphan*/  old_errfunc; int /*<<< orphan*/  old_allowhook; } ;
struct TYPE_13__ {TYPE_1__ c; } ;
struct TYPE_15__ {TYPE_2__ u; int /*<<< orphan*/  callstatus; int /*<<< orphan*/  extra; } ;
typedef  int /*<<< orphan*/  StkId ;
typedef  TYPE_4__ CallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  CIST_STAT ; 
 TYPE_4__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5 (lua_State *L, int status) {
  StkId oldtop;
  CallInfo *ci = FUNC0(L);
  if (ci == NULL) return 0;  /* no recovery point */
  /* "finish" luaD_pcall */
  oldtop = FUNC3(L, ci->extra);
  FUNC2(L, oldtop);
  FUNC4(L, status, oldtop);
  L->ci = ci;
  L->allowhook = ci->u.c.old_allowhook;
  L->nny = 0;  /* should be zero to be yieldable */
  FUNC1(L);
  L->errfunc = ci->u.c.old_errfunc;
  ci->callstatus |= CIST_STAT;  /* call has error status */
  ci->u.c.status = status;  /* (here it is) */
  return 1;  /* continue running the coroutine */
}