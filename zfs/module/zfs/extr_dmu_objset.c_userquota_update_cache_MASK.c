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
struct TYPE_5__ {int /*<<< orphan*/  uqn_delta; int /*<<< orphan*/  uqn_id; } ;
typedef  TYPE_1__ userquota_node_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(avl_tree_t *avl, const char *id, int64_t delta)
{
	userquota_node_t *uqn;
	avl_index_t idx;

	FUNC0(FUNC5(id) < sizeof (uqn->uqn_id));
	/*
	 * Use id directly for searching because uqn_id is the first field of
	 * userquota_node_t and fields after uqn_id won't be accessed in
	 * avl_find().
	 */
	uqn = FUNC1(avl, (const void *)id, &idx);
	if (uqn == NULL) {
		uqn = FUNC3(sizeof (*uqn), KM_SLEEP);
		FUNC4(uqn->uqn_id, id, sizeof (uqn->uqn_id));
		FUNC2(avl, uqn, idx);
	}
	uqn->uqn_delta += delta;
}