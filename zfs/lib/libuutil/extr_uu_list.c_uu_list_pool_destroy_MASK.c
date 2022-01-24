#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ ul_next_enc; scalar_t__ ul_prev_enc; } ;
struct TYPE_9__ {TYPE_2__* ulp_next; TYPE_1__* ulp_prev; int /*<<< orphan*/  ulp_name; TYPE_6__ ulp_null_list; scalar_t__ ulp_debug; } ;
typedef  TYPE_3__ uu_list_pool_t ;
struct TYPE_8__ {TYPE_1__* ulp_prev; } ;
struct TYPE_7__ {TYPE_2__* ulp_next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  uu_lpool_list_lock ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,void*) ; 

void
FUNC5(uu_list_pool_t *pp)
{
	if (pp->ulp_debug) {
		if (pp->ulp_null_list.ul_next_enc !=
		    FUNC0(&pp->ulp_null_list) ||
		    pp->ulp_null_list.ul_prev_enc !=
		    FUNC0(&pp->ulp_null_list)) {
			FUNC4("uu_list_pool_destroy: Pool \"%.*s\" (%p) has "
			    "outstanding lists, or is corrupt.\n",
			    (int)sizeof (pp->ulp_name), pp->ulp_name,
			    (void *)pp);
		}
	}
	(void) FUNC1(&uu_lpool_list_lock);
	pp->ulp_next->ulp_prev = pp->ulp_prev;
	pp->ulp_prev->ulp_next = pp->ulp_next;
	(void) FUNC2(&uu_lpool_list_lock);
	pp->ulp_prev = NULL;
	pp->ulp_next = NULL;
	FUNC3(pp);
}