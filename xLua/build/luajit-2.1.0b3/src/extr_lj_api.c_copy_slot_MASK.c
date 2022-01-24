#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  env; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_14__ {int /*<<< orphan*/  env; int /*<<< orphan*/  gct; } ;
struct TYPE_16__ {TYPE_1__ c; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_3__ GCfunc ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_ERR_NOENV ; 
 int /*<<< orphan*/  LJ_TFUNC ; 
 int LUA_ENVIRONINDEX ; 
 int LUA_GLOBALSINDEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(lua_State *L, TValue *f, int idx)
{
  if (idx == LUA_GLOBALSINDEX) {
    FUNC0(L, FUNC10(f));
    /* NOBARRIER: A thread (i.e. L) is never black. */
    FUNC8(L->env, FUNC7(FUNC9(f)));
  } else if (idx == LUA_ENVIRONINDEX) {
    GCfunc *fn = FUNC3(L);
    if (fn->c.gct != ~LJ_TFUNC)
      FUNC5(L, LJ_ERR_NOENV);
    FUNC0(L, FUNC10(f));
    FUNC8(fn->c.env, FUNC7(FUNC9(f)));
    FUNC6(L, fn, f);
  } else {
    TValue *o = FUNC4(L, idx);
    FUNC1(L, o);
    FUNC2(L, o, f);
    if (idx < LUA_GLOBALSINDEX)  /* Need a barrier for upvalues. */
      FUNC6(L, FUNC3(L), f);
  }
}