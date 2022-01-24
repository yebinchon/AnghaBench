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

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

lua_Integer FUNC2 (lua_State *L, lua_Integer m, lua_Integer n) {
  if (FUNC0(n) + 1u <= 1u) {  /* special cases: -1 or 0 */
    if (n == 0)
      FUNC1(L, "attempt to perform 'n%%0'");
    return 0;   /* m % -1 == 0; avoid overflow with 0x80000...%-1 */
  }
  else {
    lua_Integer r = m % n;
    if (r != 0 && (m ^ n) < 0)  /* 'm/n' would be non-integer negative? */
      r += n;  /* correct result for different rounding */
    return r;
  }
}