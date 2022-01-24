#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_2__ lua_State ;
typedef  int /*<<< orphan*/  lua_CFunction ;
struct TYPE_11__ {int /*<<< orphan*/  env; } ;
struct TYPE_13__ {TYPE_1__ c; } ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  int /*<<< orphan*/  GCfunc ;

/* Variables and functions */
 TYPE_9__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(lua_State *L, lua_CFunction cf, int id, const char *name)
{
  GCfunc *fn = FUNC2(L, cf, id);
  GCtab *t = FUNC6(FUNC0(L)->c.env);  /* Reference to parent table. */
  FUNC5(L, FUNC4(L, t, FUNC3(L, name)), fn);
  FUNC1(L, t);
  FUNC5(L, L->top++, fn);
  return 1;
}