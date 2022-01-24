#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int skc_flags; } ;
typedef  TYPE_2__ spl_kmem_cache_t ;
struct TYPE_7__ {TYPE_1__* reclaim_state; } ;
struct TYPE_5__ {int reclaimed_slab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int KMC_KMEM ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 

__attribute__((used)) static void
FUNC6(spl_kmem_cache_t *skc, void *ptr, int size)
{
	FUNC0(FUNC2(ptr, PAGE_SIZE));

	/*
	 * The Linux direct reclaim path uses this out of band value to
	 * determine if forward progress is being made.  Normally this is
	 * incremented by kmem_freepages() which is part of the various
	 * Linux slab implementations.  However, since we are using none
	 * of that infrastructure we are responsible for incrementing it.
	 */
	if (current->reclaim_state)
		current->reclaim_state->reclaimed_slab += size >> PAGE_SHIFT;

	if (skc->skc_flags & KMC_KMEM) {
		FUNC0(FUNC1(size));
		FUNC3((unsigned long)ptr, FUNC4(size));
	} else {
		FUNC5(ptr, size);
	}
}