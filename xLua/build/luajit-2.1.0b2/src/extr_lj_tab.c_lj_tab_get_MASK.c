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
typedef  scalar_t__ lua_Number ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_5__ {int /*<<< orphan*/  val; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ Node ;
typedef  int /*<<< orphan*/  GCtab ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 

cTValue *FUNC14(lua_State *L, GCtab *t, cTValue *key)
{
  if (FUNC13(key)) {
    cTValue *tv = FUNC5(t, FUNC9(key));
    if (tv)
      return tv;
  } else if (FUNC10(key)) {
    cTValue *tv = FUNC4(t, FUNC1(key));
    if (tv)
      return tv;
  } else if (FUNC12(key)) {
    lua_Number nk = FUNC8(key);
    int32_t k = FUNC2(nk);
    if (nk == (lua_Number)k) {
      cTValue *tv = FUNC4(t, k);
      if (tv)
	return tv;
    } else {
      goto genlookup;  /* Else use the generic lookup. */
    }
  } else if (!FUNC11(key)) {
    Node *n;
  genlookup:
    n = FUNC0(t, key);
    do {
      if (FUNC3(&n->key, key))
	return &n->val;
    } while ((n = FUNC6(n)));
  }
  return FUNC7(L);
}