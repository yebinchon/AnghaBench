#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int hash_table_mask; int /*<<< orphan*/  hash_table; int /*<<< orphan*/ * hash_mutexes; } ;
typedef  TYPE_1__ dbuf_hash_table_t ;
typedef  size_t dbuf_cached_state_t ;
struct TYPE_5__ {int /*<<< orphan*/  cache; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 scalar_t__ B_TRUE ; 
 int DBUF_MUTEXES ; 
 size_t DB_CACHE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dbu_evict_taskq ; 
 TYPE_3__* dbuf_caches ; 
 int /*<<< orphan*/  dbuf_evict_cv ; 
 int /*<<< orphan*/  dbuf_evict_lock ; 
 scalar_t__ dbuf_evict_thread_exit ; 
 TYPE_1__ dbuf_hash_table ; 
 int /*<<< orphan*/  dbuf_kmem_cache ; 
 int /*<<< orphan*/ * dbuf_ksp ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void
FUNC14(void)
{
	dbuf_hash_table_t *h = &dbuf_hash_table;
	int i;

	FUNC3();

	for (i = 0; i < DBUF_MUTEXES; i++)
		FUNC8(&h->hash_mutexes[i]);
#if defined(_KERNEL)
	/*
	 * Large allocations which do not require contiguous pages
	 * should be using vmem_free() in the linux kernel
	 */
	vmem_free(h->hash_table, (h->hash_table_mask + 1) * sizeof (void *));
#else
	FUNC5(h->hash_table, (h->hash_table_mask + 1) * sizeof (void *));
#endif
	FUNC4(dbuf_kmem_cache);
	FUNC11(dbu_evict_taskq);

	FUNC9(&dbuf_evict_lock);
	dbuf_evict_thread_exit = B_TRUE;
	while (dbuf_evict_thread_exit) {
		FUNC1(&dbuf_evict_cv);
		FUNC2(&dbuf_evict_cv, &dbuf_evict_lock);
	}
	FUNC10(&dbuf_evict_lock);

	FUNC8(&dbuf_evict_lock);
	FUNC0(&dbuf_evict_cv);

	for (dbuf_cached_state_t dcs = 0; dcs < DB_CACHE_MAX; dcs++) {
		FUNC13(&dbuf_caches[dcs].size);
		FUNC7(dbuf_caches[dcs].cache);
	}

	if (dbuf_ksp != NULL) {
		FUNC6(dbuf_ksp);
		dbuf_ksp = NULL;
	}
}