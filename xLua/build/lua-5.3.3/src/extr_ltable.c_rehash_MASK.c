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
typedef  int /*<<< orphan*/  Table ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 int MAXABITS ; 
 unsigned int FUNC0 (unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC5 (lua_State *L, Table *t, const TValue *ek) {
  unsigned int asize;  /* optimal size for array part */
  unsigned int na;  /* number of keys in the array part */
  unsigned int nums[MAXABITS + 1];
  int i;
  int totaluse;
  for (i = 0; i <= MAXABITS; i++) nums[i] = 0;  /* reset counts */
  na = FUNC3(t, nums);  /* count keys in array part */
  totaluse = na;  /* all those keys are integer keys */
  totaluse += FUNC4(t, nums, &na);  /* count keys in hash part */
  /* count extra key */
  na += FUNC1(ek, nums);
  totaluse++;
  /* compute new size for array part */
  asize = FUNC0(nums, &na);
  /* resize the table to new computed sizes */
  FUNC2(L, t, asize, totaluse - na);
}