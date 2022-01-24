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
struct TYPE_3__ {int /*<<< orphan*/  zl_bp_tree; } ;
typedef  TYPE_1__ zilog_t ;
typedef  int /*<<< orphan*/  zil_bp_node_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(zilog_t *zilog)
{
	avl_tree_t *t = &zilog->zl_bp_tree;
	zil_bp_node_t *zn;
	void *cookie = NULL;

	while ((zn = FUNC1(t, &cookie)) != NULL)
		FUNC2(zn, sizeof (zil_bp_node_t));

	FUNC0(t);
}