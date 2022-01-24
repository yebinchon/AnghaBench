#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* ul_prev_enc; void* ul_next_enc; } ;
struct TYPE_6__ {size_t ulp_nodeoffset; size_t ulp_objsize; int ulp_debug; struct TYPE_6__* ulp_next; struct TYPE_6__* ulp_prev; TYPE_5__ ulp_null_list; int /*<<< orphan*/  ulp_lock; scalar_t__ ulp_last_index; int /*<<< orphan*/ * ulp_cmp; int /*<<< orphan*/  ulp_name; } ;
typedef  TYPE_1__ uu_list_pool_t ;
typedef  int /*<<< orphan*/  uu_list_node_t ;
typedef  int /*<<< orphan*/  uu_compare_fn_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  UU_ERROR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  UU_ERROR_NO_MEMORY ; 
 int /*<<< orphan*/  UU_ERROR_UNKNOWN_FLAG ; 
 int UU_LIST_POOL_DEBUG ; 
 int /*<<< orphan*/  UU_NAME_DOMAIN ; 
 void* FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uu_lpool_list_lock ; 
 TYPE_1__ uu_null_lpool ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int) ; 

uu_list_pool_t *
FUNC8(const char *name, size_t objsize,
    size_t nodeoffset, uu_compare_fn_t *compare_func, uint32_t flags)
{
	uu_list_pool_t *pp, *next, *prev;

	if (name == NULL ||
	    FUNC5(name, UU_NAME_DOMAIN) == -1 ||
	    nodeoffset + sizeof (uu_list_node_t) > objsize) {
		FUNC6(UU_ERROR_INVALID_ARGUMENT);
		return (NULL);
	}

	if (flags & ~UU_LIST_POOL_DEBUG) {
		FUNC6(UU_ERROR_UNKNOWN_FLAG);
		return (NULL);
	}

	pp = FUNC7(sizeof (uu_list_pool_t));
	if (pp == NULL) {
		FUNC6(UU_ERROR_NO_MEMORY);
		return (NULL);
	}

	(void) FUNC4(pp->ulp_name, name, sizeof (pp->ulp_name));
	pp->ulp_nodeoffset = nodeoffset;
	pp->ulp_objsize = objsize;
	pp->ulp_cmp = compare_func;
	if (flags & UU_LIST_POOL_DEBUG)
		pp->ulp_debug = 1;
	pp->ulp_last_index = 0;

	(void) FUNC1(&pp->ulp_lock, NULL);

	pp->ulp_null_list.ul_next_enc = FUNC0(&pp->ulp_null_list);
	pp->ulp_null_list.ul_prev_enc = FUNC0(&pp->ulp_null_list);

	(void) FUNC2(&uu_lpool_list_lock);
	pp->ulp_next = next = &uu_null_lpool;
	pp->ulp_prev = prev = next->ulp_prev;
	next->ulp_prev = pp;
	prev->ulp_next = pp;
	(void) FUNC3(&uu_lpool_list_lock);

	return (pp);
}