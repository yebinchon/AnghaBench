#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  who_deleg_perm_avl; } ;
typedef  TYPE_1__ who_perm_t ;
typedef  int /*<<< orphan*/  deleg_perm_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC5(who_perm_t *who_perm)
{
	deleg_perm_node_t *node = FUNC2(who_perm->who_deleg_perm_avl);

	while (node != NULL) {
		deleg_perm_node_t *next_node =
		    FUNC3(who_perm->who_deleg_perm_avl, node);

		FUNC4(who_perm->who_deleg_perm_avl, node);
		FUNC0(node);
		node = next_node;
	}

	FUNC1(who_perm->who_deleg_perm_avl);
}