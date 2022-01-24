#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ top; scalar_t__ base; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_8__ {int /*<<< orphan*/  env; } ;
struct TYPE_10__ {TYPE_1__ c; } ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  TYPE_3__ GCfunc ;

/* Variables and functions */
 int LUA_OK ; 
 TYPE_3__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(lua_State *L, int status, int envarg)
{
  if (status == LUA_OK) {
    if (FUNC6(L->base+envarg-1)) {
      GCfunc *fn = FUNC0(L->top-1);
      GCtab *t = FUNC5(L->base+envarg-1);
      FUNC3(fn->c.env, FUNC2(t));
      FUNC1(L, fn, t);
    }
    return 1;
  } else {
    FUNC4(L->top-2);
    return 2;
  }
}