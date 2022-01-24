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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  cTValue ;
typedef  int /*<<< orphan*/  GCtab ;

/* Variables and functions */
 int LJ_MAX_ABITS ; 
 int FUNC0 (int*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(lua_State *L, GCtab *t, cTValue *ek)
{
  uint32_t bins[LJ_MAX_ABITS];
  uint32_t total, asize, na, i;
  for (i = 0; i < LJ_MAX_ABITS; i++) bins[i] = 0;
  asize = FUNC1(t, bins);
  total = 1 + asize;
  total += FUNC2(t, bins, &asize);
  asize += FUNC3(ek, bins);
  na = FUNC0(bins, &asize);
  total -= na;
  FUNC5(L, t, asize, FUNC4(total));
}