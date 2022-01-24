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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (char const*,char*) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 

void FUNC8(lua_State *L, const char *tname)
{
  /* Local variables */
  char term[256];
  char chars[] = {'.', '\0'};
  const char *tname_full = tname; // used for error case

  /* Get outermost table from Lua */
  int n = FUNC5(tname, chars);
  FUNC7(term, tname, n);
  term[n] = '\0';
  FUNC2(L, term);
  tname  += n + 1;

  /* Traverse hierarchy down to last table*/
  n = FUNC5(tname, chars);
  while(n < FUNC6(tname))
  {
    /* Check that current parent is a table (i.e. a module) */
    if(!FUNC3(L, -1)){
      FUNC7(term, tname_full, tname - tname_full - 1);
      term[tname - tname_full] = '\0';
      FUNC0(L, "while creating metatable %s: bad argument #1 (%s is an invalid module name)", tname_full, term);
    }
    FUNC7(term, tname, n);
    term[n] = '\0';
    FUNC1(L, -1, term);
    FUNC4(L, -2);
    tname += n + 1;
    n = FUNC5(tname, chars); // prepare for next
  }

  /* Check that resulting parent is a table (i.e. a module) */
  if(!FUNC3(L, -1)){
    FUNC7(term, tname_full, tname - tname_full - 1);
    term[tname - tname_full] = '\0';
    FUNC0(L, "while creating metatable %s: bad argument #1 (%s is an invalid module name)", tname_full, term);
  }
}