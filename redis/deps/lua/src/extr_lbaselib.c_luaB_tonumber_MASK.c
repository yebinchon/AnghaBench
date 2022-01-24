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
typedef  int /*<<< orphan*/  lua_Number ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 unsigned long FUNC9 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC10 (lua_State *L) {
  int base = FUNC4(L, 2, 10);
  if (base == 10) {  /* standard conversion */
    FUNC2(L, 1);
    if (FUNC5(L, 1)) {
      FUNC7(L, FUNC8(L, 1));
      return 1;
    }
  }
  else {
    const char *s1 = FUNC3(L, 1);
    char *s2;
    unsigned long n;
    FUNC1(L, 2 <= base && base <= 36, 2, "base out of range");
    n = FUNC9(s1, &s2, base);
    if (s1 != s2) {  /* at least one valid digit? */
      while (FUNC0((unsigned char)(*s2))) s2++;  /* skip trailing spaces */
      if (*s2 == '\0') {  /* no invalid trailing characters? */
        FUNC7(L, (lua_Number)n);
        return 1;
      }
    }
  }
  FUNC6(L);  /* else not a number */
  return 1;
}