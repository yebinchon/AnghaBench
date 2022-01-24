#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  scalar_t__ lua_Integer ;

/* Variables and functions */
 scalar_t__ LUA_MAXINTEGER ; 
 scalar_t__ L_RANDMAX ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7 (lua_State *L) {
  lua_Integer low, up;
  double r = (double)FUNC0() * (1.0 / ((double)L_RANDMAX + 1.0));
  switch (FUNC4(L)) {  /* check number of arguments */
    case 0: {  /* no arguments */
      FUNC6(L, (lua_Number)r);  /* Number between 0 and 1 */
      return 1;
    }
    case 1: {  /* only upper limit */
      low = 1;
      up = FUNC2(L, 1);
      break;
    }
    case 2: {  /* lower and upper limits */
      low = FUNC2(L, 1);
      up = FUNC2(L, 2);
      break;
    }
    default: return FUNC3(L, "wrong number of arguments");
  }
  /* random integer in the interval [low, up] */
  FUNC1(L, low <= up, 1, "interval is empty");
  FUNC1(L, low >= 0 || up <= LUA_MAXINTEGER + low, 1,
                   "interval too large");
  r *= (double)(up - low) + 1.0;
  FUNC5(L, (lua_Integer)r + low);
  return 1;
}