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
typedef  int lua_Number ;

/* Variables and functions */
 int FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static lua_Number FUNC4 (const char **s, lua_Number r, int *count) {
  for (; FUNC2(FUNC1(**s)); (*s)++) {  /* read integer part */
    r = (r * FUNC0(16.0)) + FUNC0(FUNC3(FUNC1(**s)));
    (*count)++;
  }
  return r;
}