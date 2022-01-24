#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  env; } ;
typedef  TYPE_2__ lua_State ;
typedef  void* lua_CFunction ;
struct TYPE_17__ {int threshold; int total; } ;
struct TYPE_19__ {TYPE_1__ gc; } ;
typedef  TYPE_3__ global_State ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  LJ_ERR_ERRMEM ; 
 int /*<<< orphan*/  LJ_MIN_GLOBAL ; 
 int /*<<< orphan*/  LJ_MIN_REGISTRY ; 
 scalar_t__ LJ_MIN_STRTAB ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static TValue *FUNC14(lua_State *L, lua_CFunction dummy, void *ud)
{
  global_State *g = FUNC0(L);
  FUNC1(dummy);
  FUNC1(ud);
  FUNC13(L, L);
  /* NOBARRIER: State initialization, all objects are white. */
  FUNC11(L->env, FUNC9(FUNC7(L, 0, LJ_MIN_GLOBAL)));
  FUNC12(L, FUNC10(L), FUNC7(L, 0, LJ_MIN_REGISTRY));
  FUNC6(L, LJ_MIN_STRTAB-1);
  FUNC5(L);
  FUNC4(L);
  FUNC2(FUNC3(L, LJ_ERR_ERRMEM));  /* Preallocate memory error msg. */
  g->gc.threshold = 4*g->gc.total;
  FUNC8(g);
  return NULL;
}