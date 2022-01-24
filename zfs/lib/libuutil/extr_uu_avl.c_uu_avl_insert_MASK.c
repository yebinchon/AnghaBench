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
struct TYPE_4__ {int /*<<< orphan*/  ua_tree; int /*<<< orphan*/  ua_index; int /*<<< orphan*/ * ua_pool; scalar_t__ ua_debug; } ;
typedef  TYPE_1__ uu_avl_t ;
typedef  int /*<<< orphan*/  uu_avl_pool_t ;
typedef  scalar_t__ uu_avl_index_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 uintptr_t* FUNC4 (int /*<<< orphan*/ *,void*) ; 
 uintptr_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,void*,void*,void*,...) ; 

void
FUNC8(uu_avl_t *ap, void *elem, uu_avl_index_t idx)
{
	if (ap->ua_debug) {
		uu_avl_pool_t *pp = ap->ua_pool;
		uintptr_t *na = FUNC4(pp, elem);

		if (na[1] != 0)
			FUNC7("uu_avl_insert(%p, %p, %p): node already "
			    "in tree, or corrupt\n",
			    (void *)ap, elem, (void *)idx);
		if (na[0] == 0)
			FUNC7("uu_avl_insert(%p, %p, %p): node not "
			    "initialized\n",
			    (void *)ap, elem, (void *)idx);
		if (na[0] != FUNC5(pp))
			FUNC7("uu_avl_insert(%p, %p, %p): node from "
			    "other pool, or corrupt\n",
			    (void *)ap, elem, (void *)idx);

		if (!FUNC3(ap, idx))
			FUNC7("uu_avl_insert(%p, %p, %p): %s\n",
			    (void *)ap, elem, (void *)idx,
			    FUNC0(idx)? "outdated index" :
			    "invalid index");

		/*
		 * invalidate outstanding uu_avl_index_ts.
		 */
		ap->ua_index = FUNC2(ap->ua_index);
	}
	FUNC6(&ap->ua_tree, elem, FUNC1(idx));
}