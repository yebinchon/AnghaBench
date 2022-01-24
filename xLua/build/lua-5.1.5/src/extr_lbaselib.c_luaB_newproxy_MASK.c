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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int FUNC14 (lua_State *L) {
  FUNC11(L, 1);
  FUNC4(L, 0);  /* create proxy */
  if (FUNC12(L, 1) == 0)
    return 1;  /* no metatable */
  else if (FUNC2(L, 1)) {
    FUNC3(L);  /* create a new metatable `m' ... */
    FUNC7(L, -1);  /* ... and mark `m' as a valid metatable */
    FUNC6(L, 1);
    FUNC9(L, FUNC13(1));  /* weaktable[m] = true */
  }
  else {
    int validproxy = 0;  /* to check if weaktable[metatable(u)] == true */
    if (FUNC1(L, 1)) {
      FUNC8(L, FUNC13(1));
      validproxy = FUNC12(L, -1);
      FUNC5(L, 1);  /* remove value */
    }
    FUNC0(L, validproxy, 1, "boolean or proxy expected");
    FUNC1(L, 1);  /* metatable is valid; get it */
  }
  FUNC10(L, 2);
  return 1;
}