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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char**) ; 

__attribute__((used)) static const char *FUNC4 (const char *s, lua_Number *result, int mode) {
  char *endptr;
  *result = (mode == 'x') ? FUNC3(s, &endptr)  /* try to convert */
                          : FUNC2(s, &endptr);
  if (endptr == s) return NULL;  /* nothing recognized? */
  while (FUNC1(FUNC0(*endptr))) endptr++;  /* skip trailing spaces */
  return (*endptr == '\0') ? endptr : NULL;  /* OK if no trailing characters */
}