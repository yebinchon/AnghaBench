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
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static int FUNC7 (lua_State *L) {
  int n = FUNC1(L);  /* number of elements to pack */
  FUNC0(L, n, 1);  /* create result table */
  FUNC2(L, n);
  FUNC6(L, -2, "n");  /* t.n = number of elements */
  if (n > 0) {  /* at least one element? */
    int i;
    FUNC3(L, 1);
    FUNC4(L, -2, 1);  /* insert first element */
    FUNC5(L, 1);  /* move table into index 1 */
    for (i = n; i >= 2; i--)  /* assign other elements */
      FUNC4(L, 1, i);
  }
  return 1;  /* return table */
}