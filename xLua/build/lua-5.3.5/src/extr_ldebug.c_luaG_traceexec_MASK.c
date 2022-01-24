#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int hookmask; scalar_t__ hookcount; scalar_t__ oldpc; scalar_t__ status; scalar_t__ top; TYPE_4__* ci; } ;
typedef  TYPE_3__ lua_State ;
typedef  int lu_byte ;
struct TYPE_15__ {int /*<<< orphan*/ * p; } ;
struct TYPE_11__ {scalar_t__ savedpc; } ;
struct TYPE_12__ {TYPE_1__ l; } ;
struct TYPE_14__ {int callstatus; scalar_t__ func; TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  Proto ;
typedef  TYPE_4__ CallInfo ;

/* Variables and functions */
 int CIST_HOOKYIELD ; 
 int /*<<< orphan*/  LUA_HOOKCOUNT ; 
 int /*<<< orphan*/  LUA_HOOKLINE ; 
 int LUA_MASKCOUNT ; 
 int LUA_MASKLINE ; 
 scalar_t__ LUA_YIELD ; 
 TYPE_9__* FUNC0 (TYPE_4__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

void FUNC6 (lua_State *L) {
  CallInfo *ci = L->ci;
  lu_byte mask = L->hookmask;
  int counthook = (--L->hookcount == 0 && (mask & LUA_MASKCOUNT));
  if (counthook)
    FUNC5(L);  /* reset count */
  else if (!(mask & LUA_MASKLINE))
    return;  /* no line hook and count != 0; nothing to be done */
  if (ci->callstatus & CIST_HOOKYIELD) {  /* called hook last time? */
    ci->callstatus &= ~CIST_HOOKYIELD;  /* erase mark */
    return;  /* do not call hook again (VM yielded, so it did not move) */
  }
  if (counthook)
    FUNC2(L, LUA_HOOKCOUNT, -1);  /* call count hook */
  if (mask & LUA_MASKLINE) {
    Proto *p = FUNC0(ci)->p;
    int npc = FUNC4(ci->u.l.savedpc, p);
    int newline = FUNC1(p, npc);
    if (npc == 0 ||  /* call linehook when enter a new function, */
        ci->u.l.savedpc <= L->oldpc ||  /* when jump back (loop), or when */
        newline != FUNC1(p, FUNC4(L->oldpc, p)))  /* enter a new line */
      FUNC2(L, LUA_HOOKLINE, newline);  /* call line hook */
  }
  L->oldpc = ci->u.l.savedpc;
  if (L->status == LUA_YIELD) {  /* did hook yield? */
    if (counthook)
      L->hookcount = 1;  /* undo decrement to zero */
    ci->u.l.savedpc--;  /* undo increment (resume will increment it again) */
    ci->callstatus |= CIST_HOOKYIELD;  /* mark that it yielded */
    ci->func = L->top - 1;  /* protect stack below results */
    FUNC3(L, LUA_YIELD);
  }
}