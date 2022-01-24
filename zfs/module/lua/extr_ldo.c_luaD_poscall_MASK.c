#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptrdiff_t ;
struct TYPE_12__ {int hookmask; scalar_t__ top; TYPE_4__* ci; int /*<<< orphan*/  oldpc; } ;
typedef  TYPE_3__ lua_State ;
struct TYPE_10__ {int /*<<< orphan*/  savedpc; } ;
struct TYPE_11__ {TYPE_1__ l; } ;
struct TYPE_13__ {scalar_t__ func; int nresults; struct TYPE_13__* previous; TYPE_2__ u; } ;
typedef  scalar_t__ StkId ;
typedef  TYPE_4__ CallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_HOOKRET ; 
 int LUA_MASKLINE ; 
 int LUA_MASKRET ; 
 int LUA_MULTRET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5 (lua_State *L, StkId firstResult) {
  StkId res;
  int wanted, i;
  CallInfo *ci = L->ci;
  if (L->hookmask & (LUA_MASKRET | LUA_MASKLINE)) {
    if (L->hookmask & LUA_MASKRET) {
      ptrdiff_t fr = FUNC2(L, firstResult);  /* hook may change stack */
      FUNC0(L, LUA_HOOKRET, -1);
      firstResult = FUNC1(L, fr);
    }
    L->oldpc = ci->previous->u.l.savedpc;  /* 'oldpc' for caller function */
  }
  res = ci->func;  /* res == final position of 1st result */
  wanted = ci->nresults;
  L->ci = ci = ci->previous;  /* back to caller */
  /* move results to correct place */
  for (i = wanted; i != 0 && firstResult < L->top; i--)
    FUNC4(L, res++, firstResult++);
  while (i-- > 0)
    FUNC3(res++);
  L->top = res;
  return (wanted - LUA_MULTRET);  /* 0 iff wanted == LUA_MULTRET */
}