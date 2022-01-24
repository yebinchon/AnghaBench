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
typedef  int /*<<< orphan*/  lua_Debug ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1 (lua_State *L) {
  lua_Debug ar;
  int li = 1, le = 1;
  /* find an upper bound */
  while (FUNC0(L, le, &ar)) { li = le; le *= 2; }
  /* do a binary search */
  while (li < le) {
    int m = (li + le)/2;
    if (FUNC0(L, m, &ar)) li = m + 1;
    else le = m;
  }
  return le - 1;
}