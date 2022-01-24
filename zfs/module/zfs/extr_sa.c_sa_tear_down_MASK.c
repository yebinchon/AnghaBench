#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int sa_user_table_sz; int lot_attr_count; int /*<<< orphan*/  sa_lock; int /*<<< orphan*/  sa_layout_num_tree; int /*<<< orphan*/  sa_layout_hash_tree; struct TYPE_12__* lot_attrs; int /*<<< orphan*/  lot_idx_tab; struct TYPE_12__* sa_user_table; } ;
typedef  TYPE_1__ sa_os_t ;
typedef  TYPE_1__ sa_lot_t ;
struct TYPE_13__ {int /*<<< orphan*/  sa_refcount; } ;
typedef  TYPE_3__ sa_idx_tab_t ;
typedef  int /*<<< orphan*/  sa_attr_type_t ;
struct TYPE_14__ {TYPE_1__* os_sa; } ;
typedef  TYPE_4__ objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(objset_t *os)
{
	sa_os_t *sa = os->os_sa;
	sa_lot_t *layout;
	void *cookie;

	FUNC3(sa->sa_user_table, sa->sa_user_table_sz);

	/* Free up attr table */

	FUNC6(sa);

	cookie = NULL;
	while ((layout =
	    FUNC2(&sa->sa_layout_hash_tree, &cookie))) {
		sa_idx_tab_t *tab;
		while ((tab = FUNC4(&layout->lot_idx_tab))) {
			FUNC0(FUNC8(&tab->sa_refcount));
			FUNC7(os, tab);
		}
	}

	cookie = NULL;
	while ((layout = FUNC2(&sa->sa_layout_num_tree, &cookie))) {
		FUNC3(layout->lot_attrs,
		    sizeof (sa_attr_type_t) * layout->lot_attr_count);
		FUNC3(layout, sizeof (sa_lot_t));
	}

	FUNC1(&sa->sa_layout_hash_tree);
	FUNC1(&sa->sa_layout_num_tree);
	FUNC5(&sa->sa_lock);

	FUNC3(sa, sizeof (sa_os_t));
	os->os_sa = NULL;
}