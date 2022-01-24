#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;
struct TYPE_6__ {int /*<<< orphan*/ * L; int /*<<< orphan*/  cap; } ;
typedef  TYPE_1__ CapState ;

/* Variables and functions */
#define  Cstring 129 
#define  Csubst 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC9 (luaL_Buffer *b, CapState *cs, const char *what) {
  switch (FUNC0(cs->cap)) {
    case Cstring:
      FUNC7(b, cs);  /* add capture directly to buffer */
      return 1;
    case Csubst:
      FUNC8(b, cs);  /* add capture directly to buffer */
      return 1;
    default: {
      lua_State *L = cs->L;
      int n = FUNC6(cs);
      if (n > 0) {
        if (n > 1) FUNC5(L, n - 1);  /* only one result */
        if (!FUNC4(L, -1))
          FUNC2(L, "invalid %s value (a %s)", what, FUNC3(L, -1));
        FUNC1(b);
      }
      return n;
    }
  }
}