#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct kcf_sreq_node {int dummy; } ;
struct kcf_context {int dummy; } ;
struct kcf_areq_node {int dummy; } ;
typedef  int /*<<< orphan*/  kstat_named_t ;
typedef  int /*<<< orphan*/  kcf_stats_t ;
struct TYPE_9__ {int rt_curid; int /*<<< orphan*/  rt_lock; } ;
typedef  TYPE_1__ kcf_reqid_table_t ;
typedef  int /*<<< orphan*/  kcf_global_swq_t ;
struct TYPE_11__ {int gs_maxjobs; int /*<<< orphan*/ * gs_last; int /*<<< orphan*/  gs_first; scalar_t__ gs_njobs; int /*<<< orphan*/  gs_cv; int /*<<< orphan*/  gs_lock; } ;
struct TYPE_10__ {int /*<<< orphan*/  ks_update; int /*<<< orphan*/ * ks_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CV_DEFAULT ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  KSTAT_FLAG_VIRTUAL ; 
 int /*<<< orphan*/  KSTAT_TYPE_NAMED ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int REQID_TABLES ; 
 int crypto_taskq_maxalloc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__* gswq ; 
 void* kcf_areq_cache ; 
 int /*<<< orphan*/  kcf_areq_cache_constructor ; 
 int /*<<< orphan*/  kcf_areq_cache_destructor ; 
 void* kcf_context_cache ; 
 int /*<<< orphan*/  kcf_context_cache_constructor ; 
 int /*<<< orphan*/  kcf_context_cache_destructor ; 
 int /*<<< orphan*/  kcf_ksdata ; 
 int kcf_maxthreads ; 
 TYPE_2__* kcf_misc_kstat ; 
 int /*<<< orphan*/  kcf_misc_kstat_update ; 
 TYPE_1__** kcf_reqid_table ; 
 void* kcf_sreq_cache ; 
 int /*<<< orphan*/  kcf_sreq_cache_constructor ; 
 int /*<<< orphan*/  kcf_sreq_cache_destructor ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_5__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ntfy_list_cv ; 
 int /*<<< orphan*/  ntfy_list_lock ; 

void
FUNC8(void)
{
	int i;
	kcf_reqid_table_t *rt;

	/*
	 * Create all the kmem caches needed by the framework. We set the
	 * align argument to 64, to get a slab aligned to 64-byte as well as
	 * have the objects (cache_chunksize) to be a 64-byte multiple.
	 * This helps to avoid false sharing as this is the size of the
	 * CPU cache line.
	 */
	kcf_sreq_cache = FUNC3("kcf_sreq_cache",
	    sizeof (struct kcf_sreq_node), 64, kcf_sreq_cache_constructor,
	    kcf_sreq_cache_destructor, NULL, NULL, NULL, 0);

	kcf_areq_cache = FUNC3("kcf_areq_cache",
	    sizeof (struct kcf_areq_node), 64, kcf_areq_cache_constructor,
	    kcf_areq_cache_destructor, NULL, NULL, NULL, 0);

	kcf_context_cache = FUNC3("kcf_context_cache",
	    sizeof (struct kcf_context), 64, kcf_context_cache_constructor,
	    kcf_context_cache_destructor, NULL, NULL, NULL, 0);

	gswq = FUNC2(sizeof (kcf_global_swq_t), KM_SLEEP);

	FUNC7(&gswq->gs_lock, NULL, MUTEX_DEFAULT, NULL);
	FUNC0(&gswq->gs_cv, NULL, CV_DEFAULT, NULL);
	gswq->gs_njobs = 0;
	gswq->gs_maxjobs = kcf_maxthreads * crypto_taskq_maxalloc;
	gswq->gs_first = *(gswq->gs_last = NULL);

	/* Initialize the global reqid table */
	for (i = 0; i < REQID_TABLES; i++) {
		rt = FUNC4(sizeof (kcf_reqid_table_t), KM_SLEEP);
		kcf_reqid_table[i] = rt;
		FUNC7(&rt->rt_lock, NULL, MUTEX_DEFAULT, NULL);
		rt->rt_curid = i;
	}

	/* Allocate and initialize the thread pool */
	FUNC1();

	/* Initialize the event notification list variables */
	FUNC7(&ntfy_list_lock, NULL, MUTEX_DEFAULT, NULL);
	FUNC0(&ntfy_list_cv, NULL, CV_DEFAULT, NULL);

	/* Create the kcf kstat */
	kcf_misc_kstat = FUNC5("kcf", 0, "framework_stats", "crypto",
	    KSTAT_TYPE_NAMED, sizeof (kcf_stats_t) / sizeof (kstat_named_t),
	    KSTAT_FLAG_VIRTUAL);

	if (kcf_misc_kstat != NULL) {
		kcf_misc_kstat->ks_data = &kcf_ksdata;
		kcf_misc_kstat->ks_update = kcf_misc_kstat_update;
		FUNC6(kcf_misc_kstat);
	}
}