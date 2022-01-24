#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {scalar_t__ flags; int /*<<< orphan*/  metatable; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  const TValue ;
typedef  int /*<<< orphan*/  StkId ;

/* Variables and functions */
 int MAXTAGLOOP ; 
 int /*<<< orphan*/  TM_NEWINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  const* FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*) ; 

void FUNC13 (lua_State *L, const TValue *t, TValue *key, StkId val) {
  int loop;
  TValue temp;
  for (loop = 0; loop < MAXTAGLOOP; loop++) {
    const TValue *tm;
    if (FUNC12(t)) {  /* `t' is a table? */
      Table *h = FUNC2(t);
      TValue *oldval = FUNC6(L, h, key); /* do a primitive set */
      if (!FUNC11(oldval) ||  /* result is no nil? */
          (tm = FUNC1(L, h->metatable, TM_NEWINDEX)) == NULL) { /* or no TM? */
        FUNC9(L, oldval, val);
        h->flags = 0;
        FUNC3(L, h, val);
        return;
      }
      /* else will try the tag method */
    }
    else if (FUNC11(tm = FUNC7(L, t, TM_NEWINDEX)))
      FUNC5(L, t, "index");
    if (FUNC10(tm)) {
      FUNC0(L, tm, t, key, val);
      return;
    }
    /* else repeat with `tm' */
    FUNC8(L, &temp, tm);  /* avoid pointing inside table (may rehash) */
    t = &temp;
  }
  FUNC4(L, "loop in settable");
}