#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  env; int /*<<< orphan*/ * top; int /*<<< orphan*/ * base; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_15__ {int nupvalues; int /*<<< orphan*/ * upvalue; int /*<<< orphan*/  env; int /*<<< orphan*/  gct; } ;
struct TYPE_17__ {TYPE_1__ c; } ;
struct TYPE_14__ {int /*<<< orphan*/  tmptv; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_3__ GCfunc ;

/* Variables and functions */
 TYPE_12__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  LJ_TFUNC ; 
 int LUA_ENVIRONINDEX ; 
 int LUA_GLOBALSINDEX ; 
 int LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 TYPE_3__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static TValue *FUNC8(lua_State *L, int idx)
{
  if (idx > 0) {
    TValue *o = L->base + (idx - 1);
    return o < L->top ? o : FUNC4(L);
  } else if (idx > LUA_REGISTRYINDEX) {
    FUNC1(L, idx != 0 && -idx <= L->top - L->base);
    return L->top + idx;
  } else if (idx == LUA_GLOBALSINDEX) {
    TValue *o = &FUNC0(L)->tmptv;
    FUNC6(L, o, FUNC7(L->env));
    return o;
  } else if (idx == LUA_REGISTRYINDEX) {
    return FUNC5(L);
  } else {
    GCfunc *fn = FUNC2(L);
    FUNC1(L, fn->c.gct == ~LJ_TFUNC && !FUNC3(fn));
    if (idx == LUA_ENVIRONINDEX) {
      TValue *o = &FUNC0(L)->tmptv;
      FUNC6(L, o, FUNC7(fn->c.env));
      return o;
    } else {
      idx = LUA_GLOBALSINDEX - idx;
      return idx <= fn->c.nupvalues ? &fn->c.upvalue[idx-1] : FUNC4(L);
    }
  }
}