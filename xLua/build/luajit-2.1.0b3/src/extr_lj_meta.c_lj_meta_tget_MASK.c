#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_13__ {int /*<<< orphan*/  metatable; } ;
typedef  TYPE_2__ GCtab ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_ERR_GETLOOP ; 
 int /*<<< orphan*/  LJ_ERR_OPINDEX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int LJ_MAX_IDXCHAIN ; 
 int /*<<< orphan*/  MM_index ; 
 int /*<<< orphan*/  lj_cont_ra ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

cTValue *FUNC12(lua_State *L, cTValue *o, cTValue *k)
{
  int loop;
  for (loop = 0; loop < LJ_MAX_IDXCHAIN; loop++) {
    cTValue *mo;
    if (FUNC0(FUNC11(o))) {
      GCtab *t = FUNC7(o);
      cTValue *tv = FUNC5(L, t, k);
      if (!FUNC10(tv) ||
	  !(mo = FUNC3(L, FUNC8(t->metatable), MM_index)))
	return tv;
    } else if (FUNC10(mo = FUNC4(L, o, MM_index))) {
      FUNC2(L, o, LJ_ERR_OPINDEX);
      return NULL;  /* unreachable */
    }
    if (FUNC9(mo)) {
      L->top = FUNC6(L, lj_cont_ra, mo, o, k);
      return NULL;  /* Trigger metamethod call. */
    }
    o = mo;
  }
  FUNC1(L, LJ_ERR_GETLOOP);
  return NULL;  /* unreachable */
}