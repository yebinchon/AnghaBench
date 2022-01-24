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
 int /*<<< orphan*/  TAB_RW ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC7 (lua_State *L) {
  lua_Integer e = FUNC0(L, 1, TAB_RW) + 1;  /* first empty element */
  lua_Integer pos;  /* where to insert new element */
  switch (FUNC5(L)) {
    case 2: {  /* called with only 2 arguments */
      pos = e;  /* insert new element at the end */
      break;
    }
    case 3: {
      lua_Integer i;
      pos = FUNC2(L, 2);  /* 2nd argument is the position */
      FUNC1(L, 1 <= pos && pos <= e, 2, "position out of bounds");
      for (i = e; i > pos; i--) {  /* move up elements */
        FUNC4(L, 1, i - 1);
        FUNC6(L, 1, i);  /* t[i] = t[i - 1] */
      }
      break;
    }
    default: {
      return FUNC3(L, "wrong number of arguments to 'insert'");
    }
  }
  FUNC6(L, 1, pos);  /* t[pos] = v */
  return 0;
}