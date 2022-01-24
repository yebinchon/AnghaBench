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
typedef  scalar_t__ lua_Integer ;
typedef  scalar_t__ l_seeknum ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  SEEK_CUR 130 
#define  SEEK_END 129 
#define  SEEK_SET 128 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,int const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,char*,char const* const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
  static const int mode[] = {SEEK_SET, SEEK_CUR, SEEK_END};
  static const char *const modenames[] = {"set", "cur", "end", NULL};
  FILE *f = FUNC7(L);
  int op = FUNC3(L, 2, "cur", modenames);
  lua_Integer p3 = FUNC5(L, 3, 0);
  l_seeknum offset = (l_seeknum)p3;
  FUNC2(L, (lua_Integer)offset == p3, 3,
                  "not an integer in proper range");
  op = FUNC0(f, offset, mode[op]);
  if (op)
    return FUNC4(L, 0, NULL);  /* error */
  else {
    FUNC6(L, (lua_Integer)FUNC1(f));
    return 1;
  }
}