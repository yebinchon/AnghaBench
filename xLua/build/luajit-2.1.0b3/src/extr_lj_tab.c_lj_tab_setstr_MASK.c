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
struct TYPE_5__ {int /*<<< orphan*/  val; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ Node ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  int /*<<< orphan*/  GCstr ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

TValue *FUNC6(lua_State *L, GCtab *t, GCstr *key)
{
  TValue k;
  Node *n = FUNC0(t, key);
  do {
    if (FUNC5(&n->key) && FUNC4(&n->key) == key)
      return &n->val;
  } while ((n = FUNC2(n)));
  FUNC3(L, &k, key);
  return FUNC1(L, t, &k);
}