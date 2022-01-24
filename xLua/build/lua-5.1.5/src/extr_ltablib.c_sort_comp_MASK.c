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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6 (lua_State *L, int a, int b) {
  if (!FUNC1(L, 2)) {  /* function? */
    int res;
    FUNC4(L, 2);
    FUNC4(L, a-1);  /* -1 to compensate function */
    FUNC4(L, b-2);  /* -2 to compensate function and `a' */
    FUNC0(L, 2, 1);
    res = FUNC5(L, -1);
    FUNC3(L, 1);
    return res;
  }
  else  /* a < b? */
    return FUNC2(L, a, b);
}