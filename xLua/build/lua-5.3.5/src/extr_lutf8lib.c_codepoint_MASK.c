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
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,size_t) ; 
 char* FUNC7 (char const*,int*) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
  size_t len;
  const char *s = FUNC1(L, 1, &len);
  lua_Integer posi = FUNC6(FUNC4(L, 2, 1), len);
  lua_Integer pose = FUNC6(FUNC4(L, 3, posi), len);
  int n;
  const char *se;
  FUNC0(L, posi >= 1, 2, "out of range");
  FUNC0(L, pose <= (lua_Integer)len, 3, "out of range");
  if (posi > pose) return 0;  /* empty interval; return no values */
  if (pose - posi >= INT_MAX)  /* (lua_Integer -> int) overflow? */
    return FUNC3(L, "string slice too long");
  n = (int)(pose -  posi) + 1;
  FUNC2(L, n, "string slice too long");
  n = 0;
  se = s + pose;
  for (s += posi - 1; s < se;) {
    int code;
    s = FUNC7(s, &code);
    if (s == NULL)
      return FUNC3(L, "invalid UTF-8 code");
    FUNC5(L, code);
    n++;
  }
  return n;
}