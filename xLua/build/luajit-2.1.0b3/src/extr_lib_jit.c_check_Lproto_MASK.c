#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * top; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  GCproto ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TFUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static GCproto *FUNC7(lua_State *L, int nolua)
{
  TValue *o = L->base;
  if (L->top > o) {
    if (FUNC6(o)) {
      return FUNC4(o);
    } else if (FUNC5(o)) {
      if (FUNC2(FUNC0(o)))
	return FUNC1(FUNC0(o));
      else if (nolua)
	return NULL;
    }
  }
  FUNC3(L, 1, LUA_TFUNCTION);
  return NULL;  /* unreachable */
}