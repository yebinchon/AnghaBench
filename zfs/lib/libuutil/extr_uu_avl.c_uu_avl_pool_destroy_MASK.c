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
struct TYPE_10__ {scalar_t__ ua_next_enc; scalar_t__ ua_prev_enc; } ;
struct TYPE_9__ {TYPE_2__* uap_next; TYPE_1__* uap_prev; int /*<<< orphan*/  uap_name; TYPE_6__ uap_null_avl; scalar_t__ uap_debug; } ;
typedef  TYPE_3__ uu_avl_pool_t ;
struct TYPE_8__ {TYPE_1__* uap_prev; } ;
struct TYPE_7__ {TYPE_2__* uap_next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uu_apool_list_lock ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,void*) ; 

void
FUNC5(uu_avl_pool_t *pp)
{
	if (pp->uap_debug) {
		if (pp->uap_null_avl.ua_next_enc !=
		    FUNC0(&pp->uap_null_avl) ||
		    pp->uap_null_avl.ua_prev_enc !=
		    FUNC0(&pp->uap_null_avl)) {
			FUNC4("uu_avl_pool_destroy: Pool \"%.*s\" (%p) has "
			    "outstanding avls, or is corrupt.\n",
			    (int)sizeof (pp->uap_name), pp->uap_name,
			    (void *)pp);
		}
	}
	(void) FUNC1(&uu_apool_list_lock);
	pp->uap_next->uap_prev = pp->uap_prev;
	pp->uap_prev->uap_next = pp->uap_next;
	(void) FUNC2(&uu_apool_list_lock);
	pp->uap_prev = NULL;
	pp->uap_next = NULL;
	FUNC3(pp);
}