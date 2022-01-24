#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ top; scalar_t__ base; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  MSize ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_ERR_INVFMT ; 
 int /*<<< orphan*/  LJ_ERR_INVOPT ; 
 scalar_t__ LUA_MINSTACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__,char*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 char* FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

__attribute__((used)) static int FUNC14(lua_State *L, FILE *fp, int start)
{
  int ok, n, nargs = (int)(L->top - L->base) - start;
  FUNC0(fp);
  if (nargs == 0) {
    ok = FUNC4(L, fp, 1);
    n = start+1;  /* Return 1 result. */
  } else {
    /* The results plus the buffers go on top of the args. */
    FUNC8(L, nargs+LUA_MINSTACK, "too many arguments");
    ok = 1;
    for (n = start; nargs-- && ok; n++) {
      if (FUNC13(L->base+n)) {
	const char *p = FUNC11(L->base+n);
	if (p[0] != '*')
	  FUNC6(L, n+1, LJ_ERR_INVOPT);
	if (p[1] == 'n')
	  ok = FUNC5(L, fp);
	else if ((p[1] & ~0x20) == 'L')
	  ok = FUNC4(L, fp, (p[1] == 'l'));
	else if (p[1] == 'a')
	  FUNC2(L, fp);
	else
	  FUNC6(L, n+1, LJ_ERR_INVFMT);
      } else if (FUNC12(L->base+n)) {
	ok = FUNC3(L, fp, (MSize)FUNC7(L, n+1));
      } else {
	FUNC6(L, n+1, LJ_ERR_INVOPT);
      }
    }
  }
  if (FUNC1(fp))
    return FUNC9(L, 0, NULL);
  if (!ok)
    FUNC10(L->top-1);  /* Replace last result with nil. */
  return n - start;
}