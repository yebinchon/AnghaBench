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
typedef  int /*<<< orphan*/  cTValue ;
typedef  int /*<<< orphan*/  TValue ;
typedef  scalar_t__ MMS ;
typedef  int /*<<< orphan*/  BCReg ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_ERR_OPARITH ; 
 scalar_t__ MM_add ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lj_cont_ra ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

TValue *FUNC9(lua_State *L, TValue *ra, cTValue *rb, cTValue *rc,
		      BCReg op)
{
  MMS mm = FUNC0(op);
  TValue tempb, tempc;
  cTValue *b, *c;
  if ((b = FUNC7(rb, &tempb)) != NULL &&
      (c = FUNC7(rc, &tempc)) != NULL) {  /* Try coercion first. */
    FUNC6(ra, FUNC3(FUNC5(b), FUNC5(c), (int)mm-MM_add));
    return NULL;
  } else {
    cTValue *mo = FUNC2(L, rb, mm);
    if (FUNC8(mo)) {
      mo = FUNC2(L, rc, mm);
      if (FUNC8(mo)) {
	if (FUNC7(rb, &tempb) == NULL) rc = rb;
	FUNC1(L, rc, LJ_ERR_OPARITH);
	return NULL;  /* unreachable */
      }
    }
    return FUNC4(L, lj_cont_ra, mo, rb, rc);
  }
}