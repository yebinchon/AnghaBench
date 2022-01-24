#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INT_MAX ; 
 int TASKQ_DYNAMIC ; 
 int TASKQ_PREPOPULATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  maxclsyspri ; 
 int spl_kmem_cache_kmem_threads ; 
 int /*<<< orphan*/  spl_kmem_cache_list ; 
 int /*<<< orphan*/  spl_kmem_cache_sem ; 
 int /*<<< orphan*/  spl_kmem_cache_shrinker ; 
 int /*<<< orphan*/  spl_kmem_cache_taskq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

int
FUNC4(void)
{
	FUNC1(&spl_kmem_cache_sem);
	FUNC0(&spl_kmem_cache_list);
	spl_kmem_cache_taskq = FUNC3("spl_kmem_cache",
	    spl_kmem_cache_kmem_threads, maxclsyspri,
	    spl_kmem_cache_kmem_threads * 8, INT_MAX,
	    TASKQ_PREPOPULATE | TASKQ_DYNAMIC);
	FUNC2(&spl_kmem_cache_shrinker);

	return (0);
}