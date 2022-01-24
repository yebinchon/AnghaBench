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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int /*<<< orphan*/  f; } ;
typedef  TYPE_1__ LStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int) ; 

__attribute__((used)) static int FUNC13 (lua_State *L) {
  LStream *p = (LStream *)FUNC11(L, FUNC12(1));
  int i;
  int n = (int)FUNC9(L, FUNC12(2));
  if (FUNC2(p))  /* file is already closed? */
    return FUNC4(L, "file is already closed");
  FUNC7(L , 1);
  FUNC3(L, n, "too many arguments");
  for (i = 1; i <= n; i++)  /* push arguments to 'g_read' */
    FUNC6(L, FUNC12(3 + i));
  n = FUNC1(L, p->f, 2);  /* 'n' is number of results */
  FUNC5(n > 0);  /* should return at least a nil */
  if (FUNC8(L, -n))  /* read at least one value? */
    return n;  /* return them */
  else {  /* first result is nil: EOF or error */
    if (n > 1) {  /* is there error information? */
      /* 2nd result is error message */
      return FUNC4(L, "%s", FUNC10(L, -n + 1));
    }
    if (FUNC8(L, FUNC12(3))) {  /* generator created file? */
      FUNC7(L, 0);
      FUNC6(L, FUNC12(1));
      FUNC0(L);  /* close it */
    }
    return 0;
  }
}