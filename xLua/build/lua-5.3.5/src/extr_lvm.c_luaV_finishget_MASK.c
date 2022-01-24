#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int /*<<< orphan*/  metatable; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  StkId ;

/* Variables and functions */
 int MAXTAGLOOP ; 
 int /*<<< orphan*/  TM_INDEX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  luaH_get ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*) ; 
 int FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*) ; 

void FUNC13 (lua_State *L, const TValue *t, TValue *key, StkId val,
                      const TValue *slot) {
  int loop;  /* counter to avoid infinite loops */
  const TValue *tm;  /* metamethod */
  for (loop = 0; loop < MAXTAGLOOP; loop++) {
    if (slot == NULL) {  /* 't' is not a table? */
      FUNC7(!FUNC12(t));
      tm = FUNC5(L, t, TM_INDEX);
      if (FUNC11(tm))
        FUNC3(L, t, "index");  /* no metamethod */
      /* else will try the metamethod */
    }
    else {  /* 't' is a table */
      FUNC7(FUNC11(slot));
      tm = FUNC0(L, FUNC1(t)->metatable, TM_INDEX);  /* table's metamethod */
      if (tm == NULL) {  /* no metamethod? */
        FUNC8(val);  /* result is nil */
        return;
      }
      /* else will try the metamethod */
    }
    if (FUNC10(tm)) {  /* is metamethod a function? */
      FUNC4(L, tm, t, key, val, 1);  /* call it */
      return;
    }
    t = tm;  /* else try to access 'tm[key]' */
    if (FUNC6(L,t,key,slot,luaH_get)) {  /* fast track? */
      FUNC9(L, val, slot);  /* done */
      return;
    }
    /* else repeat (tail call 'luaV_finishget') */
  }
  FUNC2(L, "'__index' chain too long; possible loop");
}