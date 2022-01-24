#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * top; TYPE_2__* ci; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_12__ {int /*<<< orphan*/  l_registry; } ;
struct TYPE_11__ {int nupvalues; int /*<<< orphan*/ * upvalue; } ;
struct TYPE_10__ {int /*<<< orphan*/ * func; int /*<<< orphan*/ * top; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_2__ CallInfo ;
typedef  TYPE_3__ CClosure ;

/* Variables and functions */
 TYPE_7__* FUNC0 (TYPE_1__*) ; 
 int LUA_REGISTRYINDEX ; 
 int MAXUPVAL ; 
 int /*<<< orphan*/ * NONVALIDVALUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,char*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static TValue *FUNC5 (lua_State *L, int idx) {
  CallInfo *ci = L->ci;
  if (idx > 0) {
    TValue *o = ci->func + idx;
    FUNC1(L, idx <= ci->top - (ci->func + 1), "unacceptable index");
    if (o >= L->top) return NONVALIDVALUE;
    else return o;
  }
  else if (!FUNC3(idx)) {  /* negative index */
    FUNC1(L, idx != 0 && -idx <= L->top - (ci->func + 1), "invalid index");
    return L->top + idx;
  }
  else if (idx == LUA_REGISTRYINDEX)
    return &FUNC0(L)->l_registry;
  else {  /* upvalues */
    idx = LUA_REGISTRYINDEX - idx;
    FUNC1(L, idx <= MAXUPVAL + 1, "upvalue index too large");
    if (FUNC4(ci->func))  /* light C function? */
      return NONVALIDVALUE;  /* it has no upvalues */
    else {
      CClosure *func = FUNC2(ci->func);
      return (idx <= func->nupvalues) ? &func->upvalue[idx-1] : NONVALIDVALUE;
    }
  }
}