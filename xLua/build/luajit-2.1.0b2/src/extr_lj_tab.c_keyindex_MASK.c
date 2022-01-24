#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ lua_Number ;
typedef  scalar_t__ int32_t ;
struct TYPE_21__ {int hi; scalar_t__ lo; } ;
struct TYPE_22__ {TYPE_1__ u32; } ;
typedef  TYPE_2__ cTValue ;
struct TYPE_24__ {scalar_t__ asize; int /*<<< orphan*/  node; } ;
struct TYPE_23__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_2__ TValue ;
typedef  TYPE_4__ Node ;
typedef  TYPE_5__ GCtab ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_ERR_NEXTIDX ; 
 TYPE_4__* FUNC0 (TYPE_5__*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_4__* FUNC5 (TYPE_4__*) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static uint32_t FUNC12(lua_State *L, GCtab *t, cTValue *key)
{
  TValue tmp;
  if (FUNC9(key)) {
    int32_t k = FUNC1(key);
    if ((uint32_t)k < t->asize)
      return (uint32_t)k;  /* Array key indexes: [0..t->asize-1] */
    FUNC8(&tmp, (lua_Number)k);
    key = &tmp;
  } else if (FUNC11(key)) {
    lua_Number nk = FUNC7(key);
    int32_t k = FUNC3(nk);
    if ((uint32_t)k < t->asize && nk == (lua_Number)k)
      return (uint32_t)k;  /* Array key indexes: [0..t->asize-1] */
  }
  if (!FUNC10(key)) {
    Node *n = FUNC0(t, key);
    do {
      if (FUNC4(&n->key, key))
	return t->asize + (uint32_t)(n - FUNC6(t->node));
	/* Hash key indexes: [t->asize..t->asize+t->nmask] */
    } while ((n = FUNC5(n)));
    if (key->u32.hi == 0xfffe7fff)  /* ITERN was despecialized while running. */
      return key->u32.lo - 1;
    FUNC2(L, LJ_ERR_NEXTIDX);
    return 0;  /* unreachable */
  }
  return ~0u;  /* A nil key starts the traversal. */
}