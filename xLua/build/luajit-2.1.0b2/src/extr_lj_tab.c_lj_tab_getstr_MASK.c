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
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_5__ {int /*<<< orphan*/  val; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ Node ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  int /*<<< orphan*/  GCstr ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

cTValue *FUNC4(GCtab *t, GCstr *key)
{
  Node *n = FUNC0(t, key);
  do {
    if (FUNC3(&n->key) && FUNC2(&n->key) == key)
      return &n->val;
  } while ((n = FUNC1(n)));
  return NULL;
}