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
 int USHRT_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC4 (lua_State *L, int idx1, int idx2) {
  int i;
  int n1 = FUNC0(L, idx1);
  int n2 = FUNC0(L, idx2);
  if (n1 + n2 > USHRT_MAX)
    FUNC1(L, "too many Lua values in pattern");
  if (n1 == 0) return 0;  /* nothing to correct */
  for (i = 1; i <= n1; i++) {
    FUNC2(L, idx1, i);
    FUNC3(L, idx2 - 1, n2 + i);  /* correct 'idx2' */
  }
  return n2;
}