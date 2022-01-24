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
typedef  int lua_Integer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6 (lua_State *L, int fr, int curr, int limit) {
  lua_Integer res;
  if (!FUNC4(L, fr)) {  /* false value? */
    FUNC3(L, fr - 1);  /* remove results */
    return -1;  /* and fail */
  }
  else if (FUNC1(L, fr))  /* true? */
    res = curr;  /* keep current position */
  else {
    res = FUNC5(L, fr) - 1;  /* new position */
    if (res < curr || res > limit)
      FUNC0(L, "invalid position returned by match-time capture");
  }
  FUNC2(L, fr);  /* remove first result (offset) */
  return res;
}