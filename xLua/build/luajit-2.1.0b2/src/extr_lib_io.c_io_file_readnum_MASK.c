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
struct TYPE_3__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
typedef  scalar_t__ lua_Number ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  cTValue ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ LJ_DUALNUM ; 
 int /*<<< orphan*/  LUA_NUMBER_SCAN ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(lua_State *L, FILE *fp)
{
  lua_Number d;
  if (FUNC0(fp, LUA_NUMBER_SCAN, &d) == 1) {
    if (LJ_DUALNUM) {
      int32_t i = FUNC1(d);
      if (d == (lua_Number)i && !FUNC5((cTValue *)&d)) {
	FUNC2(L->top++, i);
	return 1;
      }
    }
    FUNC4(L->top++, d);
    return 1;
  } else {
    FUNC3(L->top++);
    return 0;
  }
}