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
typedef  int /*<<< orphan*/  lua_Number ;
typedef  scalar_t__ lua_Integer ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC8 (const TValue *l, const TValue *r) {
  if (FUNC7(l)) {
    lua_Integer li = FUNC3(l);
    if (FUNC7(r))
      return li < FUNC3(r);  /* both are integers */
    else  /* 'l' is int and 'r' is float */
      return FUNC1(li, FUNC2(r));  /* l < r ? */
  }
  else {
    lua_Number lf = FUNC2(l);  /* 'l' must be float */
    if (FUNC6(r))
      return FUNC5(lf, FUNC2(r));  /* both are float */
    else if (FUNC4(lf))  /* 'r' is int and 'l' is float */
      return 0;  /* NaN < i is always false */
    else  /* without NaN, (l < r)  <-->  not(r <= l) */
      return !FUNC0(FUNC3(r), lf);  /* not (r <= l) ? */
  }
}