#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {struct TYPE_26__* ne_name; struct TYPE_26__* ne_next; int /*<<< orphan*/ * ce_config; struct TYPE_26__* ce_next; struct TYPE_26__* ve_configs; struct TYPE_26__* ve_next; struct TYPE_26__* pe_vdevs; struct TYPE_26__* pe_next; struct TYPE_26__* rn_name; int /*<<< orphan*/  rn_num_labels; int /*<<< orphan*/  rn_order; int /*<<< orphan*/ * rn_config; } ;
typedef  TYPE_1__ vdev_entry_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  tpool_t ;
typedef  TYPE_1__ rdsk_node_t ;
typedef  int /*<<< orphan*/  pthread_mutex_t ;
struct TYPE_27__ {TYPE_1__* names; TYPE_1__* pools; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ pool_list_t ;
typedef  TYPE_1__ pool_entry_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  TYPE_1__ name_entry_t ;
typedef  int /*<<< orphan*/  libpc_handle_t ;
struct TYPE_28__ {scalar_t__ guid; size_t paths; int /*<<< orphan*/  policy; scalar_t__ can_be_active; int /*<<< orphan*/ * poolname; scalar_t__ path; scalar_t__ scan; } ;
typedef  TYPE_6__ importargs_t ;
typedef  TYPE_1__ config_entry_t ;
typedef  int boolean_t ;
typedef  TYPE_1__ avl_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  AVL_AFTER ; 
 int B_FALSE ; 
 int B_TRUE ; 
 int O_EXCL ; 
 int O_RDONLY ; 
 scalar_t__ POOL_STATE_L2CACHE ; 
 scalar_t__ POOL_STATE_SPARE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_NAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_STATE ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,void**) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 char** FUNC21 (size_t*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**,char const* const*,size_t) ; 
 int /*<<< orphan*/  zpool_open_func ; 

__attribute__((used)) static nvlist_t *
FUNC24(libpc_handle_t *hdl, importargs_t *iarg)
{
	nvlist_t *ret = NULL;
	pool_list_t pools = { 0 };
	pool_entry_t *pe, *penext;
	vdev_entry_t *ve, *venext;
	config_entry_t *ce, *cenext;
	name_entry_t *ne, *nenext;
	pthread_mutex_t lock;
	avl_tree_t *cache;
	rdsk_node_t *slice;
	void *cookie;
	tpool_t *t;

	FUNC20(iarg->poolname == NULL || iarg->guid == 0);
	FUNC13(&lock, NULL);

	/*
	 * Locate pool member vdevs by blkid or by directory scanning.
	 * On success a newly allocated AVL tree which is populated with an
	 * entry for each discovered vdev will be returned in the cache.
	 * It's the caller's responsibility to consume and destroy this tree.
	 */
	if (iarg->scan || iarg->paths != 0) {
		size_t dirs = iarg->paths;
		const char * const *dir = (const char * const *)iarg->path;

		if (dirs == 0)
			dir = FUNC21(&dirs);

		if (FUNC23(hdl, &lock, &cache, dir, dirs) != 0)
			return (NULL);
	} else {
		if (FUNC22(hdl, &lock, &cache) != 0)
			return (NULL);
	}

	/*
	 * Create a thread pool to parallelize the process of reading and
	 * validating labels, a large number of threads can be used due to
	 * minimal contention.
	 */
	t = FUNC16(1, 2 * FUNC15(_SC_NPROCESSORS_ONLN), 0, NULL);
	for (slice = FUNC3(cache); slice;
	    (slice = FUNC4(cache, slice, AVL_AFTER)))
		(void) FUNC18(t, zpool_open_func, slice);

	FUNC19(t);
	FUNC17(t);

	/*
	 * Process the cache, filtering out any entries which are not
	 * for the specified pool then adding matching label configs.
	 */
	cookie = NULL;
	while ((slice = FUNC2(cache, &cookie)) != NULL) {
		if (slice->rn_config != NULL) {
			nvlist_t *config = slice->rn_config;
			boolean_t matched = B_TRUE;
			boolean_t aux = B_FALSE;
			int fd;

			/*
			 * Check if it's a spare or l2cache device. If it is,
			 * we need to skip the name and guid check since they
			 * don't exist on aux device label.
			 */
			if (iarg->poolname != NULL || iarg->guid != 0) {
				uint64_t state;
				aux = FUNC10(config,
				    ZPOOL_CONFIG_POOL_STATE, &state) == 0 &&
				    (state == POOL_STATE_SPARE ||
				    state == POOL_STATE_L2CACHE);
			}

			if (iarg->poolname != NULL && !aux) {
				char *pname;

				matched = FUNC9(config,
				    ZPOOL_CONFIG_POOL_NAME, &pname) == 0 &&
				    FUNC14(iarg->poolname, pname) == 0;
			} else if (iarg->guid != 0 && !aux) {
				uint64_t this_guid;

				matched = FUNC10(config,
				    ZPOOL_CONFIG_POOL_GUID, &this_guid) == 0 &&
				    iarg->guid == this_guid;
			}
			if (matched) {
				/*
				 * Verify all remaining entries can be opened
				 * exclusively. This will prune all underlying
				 * multipath devices which otherwise could
				 * result in the vdev appearing as UNAVAIL.
				 *
				 * Under zdb, this step isn't required and
				 * would prevent a zdb -e of active pools with
				 * no cachefile.
				 */
				fd = FUNC11(slice->rn_name, O_RDONLY | O_EXCL);
				if (fd >= 0 || iarg->can_be_active) {
					if (fd >= 0)
						FUNC5(fd);
					FUNC0(hdl, &pools,
					    slice->rn_name, slice->rn_order,
					    slice->rn_num_labels, config);
				}
			}
			FUNC8(config);
		}
		FUNC6(slice->rn_name);
		FUNC6(slice);
	}
	FUNC1(cache);
	FUNC6(cache);
	FUNC12(&lock);

	ret = FUNC7(hdl, &pools, iarg->can_be_active, iarg->policy);

	for (pe = pools.pools; pe != NULL; pe = penext) {
		penext = pe->pe_next;
		for (ve = pe->pe_vdevs; ve != NULL; ve = venext) {
			venext = ve->ve_next;
			for (ce = ve->ve_configs; ce != NULL; ce = cenext) {
				cenext = ce->ce_next;
				FUNC8(ce->ce_config);
				FUNC6(ce);
			}
			FUNC6(ve);
		}
		FUNC6(pe);
	}

	for (ne = pools.names; ne != NULL; ne = nenext) {
		nenext = ne->ne_next;
		FUNC6(ne->ne_name);
		FUNC6(ne);
	}

	return (ret);
}