#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_19__ {scalar_t__ nomm; int /*<<< orphan*/  metatable; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_2__ GCtab ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_ERR_NANIDX ; 
 int /*<<< orphan*/  LJ_ERR_NILIDX ; 
 int /*<<< orphan*/  LJ_ERR_OPINDEX ; 
 int /*<<< orphan*/  LJ_ERR_SETLOOP ; 
 scalar_t__ FUNC0 (int) ; 
 int LJ_MAX_IDXCHAIN ; 
 int /*<<< orphan*/  MM_newindex ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lj_cont_nop ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 

TValue *FUNC21(lua_State *L, cTValue *o, cTValue *k)
{
  TValue tmp;
  int loop;
  for (loop = 0; loop < LJ_MAX_IDXCHAIN; loop++) {
    cTValue *mo;
    if (FUNC0(FUNC20(o))) {
      GCtab *t = FUNC13(o);
      cTValue *tv = FUNC8(L, t, k);
      if (FUNC0(!FUNC18(tv))) {
	t->nomm = 0;  /* Invalidate negative metamethod cache. */
	FUNC5(L, t);
	return (TValue *)tv;
      } else if (!(mo = FUNC6(L, FUNC14(t->metatable), MM_newindex))) {
	t->nomm = 0;  /* Invalidate negative metamethod cache. */
	FUNC5(L, t);
	if (tv != FUNC11(L))
	  return (TValue *)tv;
	if (FUNC18(k)) FUNC3(L, LJ_ERR_NILIDX);
	else if (FUNC16(k)) { FUNC12(&tmp, (lua_Number)FUNC2(k)); k = &tmp; }
	else if (FUNC19(k) && FUNC17(k)) FUNC3(L, LJ_ERR_NANIDX);
	return FUNC9(L, t, k);
      }
    } else if (FUNC18(mo = FUNC7(L, o, MM_newindex))) {
      FUNC4(L, o, LJ_ERR_OPINDEX);
      return NULL;  /* unreachable */
    }
    if (FUNC15(mo)) {
      L->top = FUNC10(L, lj_cont_nop, mo, o, k);
      /* L->top+2 = v filled in by caller. */
      return NULL;  /* Trigger metamethod call. */
    }
    FUNC1(L, &tmp, mo);
    o = &tmp;
  }
  FUNC3(L, LJ_ERR_SETLOOP);
  return NULL;  /* unreachable */
}