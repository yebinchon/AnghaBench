#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  scalar_t__ int32_t ;
struct TYPE_13__ {int /*<<< orphan*/  n; } ;
struct TYPE_11__ {int /*<<< orphan*/  n; } ;
struct TYPE_12__ {TYPE_1__ val; TYPE_3__ key; } ;
typedef  TYPE_1__ TValue ;
typedef  TYPE_2__ Node ;
typedef  int /*<<< orphan*/  GCtab ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 

TValue *FUNC4(lua_State *L, GCtab *t, int32_t key)
{
  TValue k;
  Node *n;
  k.n = (lua_Number)key;
  n = FUNC0(t, &k);
  do {
    if (FUNC3(&n->key) && n->key.n == k.n)
      return &n->val;
  } while ((n = FUNC2(n)));
  return FUNC1(L, t, &k);
}