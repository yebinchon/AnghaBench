#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* rn_name; int /*<<< orphan*/  rn_labelpaths; scalar_t__ rn_order; int /*<<< orphan*/ * rn_hdl; int /*<<< orphan*/ * rn_avl; int /*<<< orphan*/ * rn_lock; scalar_t__ rn_vdev_guid; } ;
typedef  TYPE_1__ rdsk_node_t ;
typedef  int /*<<< orphan*/  pthread_mutex_t ;
typedef  int /*<<< orphan*/  libpc_handle_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ IMPORT_ORDER_SCAN_OFFSET ; 
 int FUNC0 (TYPE_1__**,char*,char const*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC7(libpc_handle_t *hdl, pthread_mutex_t *lock,
    avl_tree_t *cache, const char *path, const char *name, int order)
{
	avl_index_t where;
	rdsk_node_t *slice;

	slice = FUNC6(hdl, sizeof (rdsk_node_t));
	if (FUNC0(&slice->rn_name, "%s/%s", path, name) == -1) {
		FUNC3(slice);
		return;
	}
	slice->rn_vdev_guid = 0;
	slice->rn_lock = lock;
	slice->rn_avl = cache;
	slice->rn_hdl = hdl;
	slice->rn_order = order + IMPORT_ORDER_SCAN_OFFSET;
	slice->rn_labelpaths = B_FALSE;

	FUNC4(lock);
	if (FUNC1(cache, slice, &where)) {
		FUNC3(slice->rn_name);
		FUNC3(slice);
	} else {
		FUNC2(cache, slice, where);
	}
	FUNC5(lock);
}