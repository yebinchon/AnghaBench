#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ top; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_11__ {TYPE_1__* fs; TYPE_2__* L; } ;
struct TYPE_9__ {int /*<<< orphan*/  h; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_3__ LexState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

TString *FUNC8 (LexState *ls, const char *str, size_t l) {
  lua_State *L = ls->L;
  TValue *o;  /* entry for `str' */
  TString *ts = FUNC3(L, str, l);  /* create new string */
  FUNC6(L, L->top++, ts);  /* temporarily anchor it in stack */
  o = FUNC2(L, ls->fs->h, L->top - 1);
  if (FUNC7(o)) {  /* not in use yet? (see 'addK') */
    /* boolean value does not need GC barrier;
       table has no metatable, so it does not need to invalidate cache */
    FUNC5(o, 1);  /* t[string] = true */
    FUNC1(L);
  }
  else {  /* string already present */
    ts = FUNC4(FUNC0(o));  /* re-use value previously stored */
  }
  L->top--;  /* remove string from stack */
  return ts;
}