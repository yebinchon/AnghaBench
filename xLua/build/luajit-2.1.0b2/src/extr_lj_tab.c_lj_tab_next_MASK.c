#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_8__ {size_t asize; size_t hmask; int /*<<< orphan*/  node; } ;
struct TYPE_7__ {int /*<<< orphan*/  val; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ Node ;
typedef  TYPE_2__ GCtab ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(lua_State *L, GCtab *t, TValue *key)
{
  uint32_t i = FUNC2(L, t, key);  /* Find predecessor key index. */
  for (i++; i < t->asize; i++)  /* First traverse the array keys. */
    if (!FUNC5(FUNC0(t, i))) {
      FUNC4(key, i);
      FUNC1(L, key+1, FUNC0(t, i));
      return 1;
    }
  for (i -= t->asize; i <= t->hmask; i++) {  /* Then traverse the hash keys. */
    Node *n = &FUNC3(t->node)[i];
    if (!FUNC5(&n->val)) {
      FUNC1(L, key, &n->key);
      FUNC1(L, key+1, &n->val);
      return 1;
    }
  }
  return 0;  /* End of traversal. */
}