#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int /*<<< orphan*/  l_registry; } ;
typedef  TYPE_1__ global_State ;
typedef  int /*<<< orphan*/  Table ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_RIDX_GLOBALS ; 
 int /*<<< orphan*/  LUA_RIDX_LAST ; 
 int /*<<< orphan*/  LUA_RIDX_MAINTHREAD ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5 (lua_State *L, global_State *g) {
  TValue temp;
  /* create registry */
  Table *registry = FUNC0(L);
  FUNC3(L, &g->l_registry, registry);
  FUNC1(L, registry, LUA_RIDX_LAST, 0);
  /* registry[LUA_RIDX_MAINTHREAD] = L */
  FUNC4(L, &temp, L);  /* temp = L */
  FUNC2(L, registry, LUA_RIDX_MAINTHREAD, &temp);
  /* registry[LUA_RIDX_GLOBALS] = table of globals */
  FUNC3(L, &temp, FUNC0(L));  /* temp = new table (global table) */
  FUNC2(L, registry, LUA_RIDX_GLOBALS, &temp);
}