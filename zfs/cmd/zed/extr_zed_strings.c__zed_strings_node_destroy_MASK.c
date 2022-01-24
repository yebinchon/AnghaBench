#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* val; struct TYPE_4__* key; } ;
typedef  TYPE_1__ zed_strings_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC1(zed_strings_node_t *np)
{
	if (!np)
		return;

	if (np->key) {
		if (np->key != np->val)
			FUNC0(np->key);
		np->key = NULL;
	}
	if (np->val) {
		FUNC0(np->val);
		np->val = NULL;
	}
	FUNC0(np);
}