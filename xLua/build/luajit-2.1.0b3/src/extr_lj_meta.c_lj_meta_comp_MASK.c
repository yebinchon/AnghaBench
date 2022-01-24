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
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  cTValue ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  MMS ;
typedef  int /*<<< orphan*/  ASMFunction ;

/* Variables and functions */
 scalar_t__ LJ_52 ; 
 scalar_t__ LJ_HASFFI ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  MM_le ; 
 int /*<<< orphan*/  MM_lt ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lj_cont_condf ; 
 int /*<<< orphan*/  lj_cont_condt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

TValue *FUNC12(lua_State *L, cTValue *o1, cTValue *o2, int op)
{
  if (LJ_HASFFI && (FUNC9(o1) || FUNC9(o2))) {
    ASMFunction cont = (op & 1) ? lj_cont_condf : lj_cont_condt;
    MMS mm = (op & 2) ? MM_le : MM_lt;
    cTValue *mo = FUNC3(L, FUNC9(o1) ? o1 : o2, mm);
    if (FUNC0(FUNC10(mo))) goto err;
    return FUNC6(L, cont, mo, o1, o2);
  } else if (LJ_52 || FUNC1(o1) == FUNC1(o2)) {
    /* Never called with two numbers. */
    if (FUNC11(o1) && FUNC11(o2)) {
      int32_t res = FUNC5(FUNC7(o1), FUNC7(o2));
      return (TValue *)(intptr_t)(((op&2) ? res <= 0 : res < 0) ^ (op&1));
    } else {
    trymt:
      while (1) {
	ASMFunction cont = (op & 1) ? lj_cont_condf : lj_cont_condt;
	MMS mm = (op & 2) ? MM_le : MM_lt;
	cTValue *mo = FUNC3(L, o1, mm);
#if LJ_52
	if (tvisnil(mo) && tvisnil((mo = lj_meta_lookup(L, o2, mm))))
#else
	cTValue *mo2 = FUNC3(L, o2, mm);
	if (FUNC10(mo) || !FUNC4(mo, mo2))
#endif
	{
	  if (op & 2) {  /* MM_le not found: retry with MM_lt. */
	    cTValue *ot = o1; o1 = o2; o2 = ot;  /* Swap operands. */
	    op ^= 3;  /* Use LT and flip condition. */
	    continue;
	  }
	  goto err;
	}
	return FUNC6(L, cont, mo, o1, o2);
      }
    }
  } else if (FUNC8(o1) && FUNC8(o2)) {
    goto trymt;
  } else {
  err:
    FUNC2(L, o1, o2);
    return NULL;
  }
}