#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  who_perm_t ;
struct TYPE_9__ {int /*<<< orphan*/  who_perm; } ;
typedef  TYPE_1__ who_perm_node_t ;
struct TYPE_10__ {int /*<<< orphan*/  fsp_uge_avl; int /*<<< orphan*/  fsp_sc_avl; } ;
typedef  TYPE_2__ fs_perm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC6(fs_perm_t *fsperm)
{
	who_perm_node_t *node = FUNC2(fsperm->fsp_sc_avl);
	while (node != NULL) {
		who_perm_node_t *next_node = FUNC3(fsperm->fsp_sc_avl,
		    node);
		who_perm_t *who_perm = &node->who_perm;
		FUNC5(who_perm);
		FUNC4(fsperm->fsp_sc_avl, node);
		FUNC0(node);
		node = next_node;
	}

	node = FUNC2(fsperm->fsp_uge_avl);
	while (node != NULL) {
		who_perm_node_t *next_node = FUNC3(fsperm->fsp_uge_avl,
		    node);
		who_perm_t *who_perm = &node->who_perm;
		FUNC5(who_perm);
		FUNC4(fsperm->fsp_uge_avl, node);
		FUNC0(node);
		node = next_node;
	}

	FUNC1(fsperm->fsp_sc_avl);
	FUNC1(fsperm->fsp_uge_avl);
}