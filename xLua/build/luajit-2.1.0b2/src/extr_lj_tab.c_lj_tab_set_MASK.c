#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ lua_Number ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_12__ {scalar_t__ nomm; } ;
struct TYPE_11__ {int /*<<< orphan*/  val; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ Node ;
typedef  TYPE_2__ GCtab ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_ERR_NANIDX ; 
 int /*<<< orphan*/  LJ_ERR_NILIDX ; 
 TYPE_1__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

TValue *FUNC16(lua_State *L, GCtab *t, cTValue *key)
{
  Node *n;
  t->nomm = 0;  /* Invalidate negative metamethod cache. */
  if (FUNC15(key)) {
    return FUNC7(L, t, FUNC10(key));
  } else if (FUNC11(key)) {
    return FUNC6(L, t, FUNC1(key));
  } else if (FUNC14(key)) {
    lua_Number nk = FUNC9(key);
    int32_t k = FUNC3(nk);
    if (nk == (lua_Number)k)
      return FUNC6(L, t, k);
    if (FUNC12(key))
      FUNC2(L, LJ_ERR_NANIDX);
    /* Else use the generic lookup. */
  } else if (FUNC13(key)) {
    FUNC2(L, LJ_ERR_NILIDX);
  }
  n = FUNC0(t, key);
  do {
    if (FUNC4(&n->key, key))
      return &n->val;
  } while ((n = FUNC8(n)));
  return FUNC5(L, t, key);
}