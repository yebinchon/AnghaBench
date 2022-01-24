#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_9__ {int /*<<< orphan*/  h; TYPE_1__* L; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

TString *FUNC8 (LexState *ls, const char *str, size_t l) {
  lua_State *L = ls->L;
  TValue *o;  /* entry for 'str' */
  TString *ts = FUNC3(L, str, l);  /* create new string */
  FUNC5(L, L->top++, ts);  /* temporarily anchor it in stack */
  o = FUNC2(L, ls->h, L->top - 1);
  if (FUNC7(o)) {  /* not in use yet? */
    /* boolean value does not need GC barrier;
       table has no metatable, so it does not need to invalidate cache */
    FUNC4(o, 1);  /* t[string] = true */
    FUNC1(L);
  }
  else {  /* string already present */
    ts = FUNC6(FUNC0(o));  /* re-use value previously stored */
  }
  L->top--;  /* remove string from stack */
  return ts;
}