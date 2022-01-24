#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  spl_kmem_slab_t ;
struct TYPE_5__ {int skc_flags; } ;
typedef  TYPE_1__ spl_kmem_cache_t ;

/* Variables and functions */
 int ENOSPC ; 
 int KMC_KMEM ; 
 int KMC_OFFSLAB ; 
 int FUNC0 (scalar_t__,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int PAGE_SIZE ; 
 int SPL_MAX_ORDER_NR_PAGES ; 
 scalar_t__ FUNC3 (int) ; 
 int spl_kmem_cache_max_size ; 
 int spl_kmem_cache_obj_per_slab ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(spl_kmem_cache_t *skc, uint32_t *objs, uint32_t *size)
{
	uint32_t sks_size, obj_size, max_size, tgt_size, tgt_objs;

	if (skc->skc_flags & KMC_OFFSLAB) {
		tgt_objs = spl_kmem_cache_obj_per_slab;
		tgt_size = FUNC2(sizeof (spl_kmem_slab_t), PAGE_SIZE);

		if ((skc->skc_flags & KMC_KMEM) &&
		    (FUNC4(skc) > (SPL_MAX_ORDER_NR_PAGES * PAGE_SIZE)))
			return (-ENOSPC);
	} else {
		sks_size = FUNC5(skc);
		obj_size = FUNC4(skc);
		max_size = (spl_kmem_cache_max_size * 1024 * 1024);
		tgt_size = (spl_kmem_cache_obj_per_slab * obj_size + sks_size);

		/*
		 * KMC_KMEM slabs are allocated by __get_free_pages() which
		 * rounds up to the nearest order.  Knowing this the size
		 * should be rounded up to the next power of two with a hard
		 * maximum defined by the maximum allowed allocation order.
		 */
		if (skc->skc_flags & KMC_KMEM) {
			max_size = SPL_MAX_ORDER_NR_PAGES * PAGE_SIZE;
			tgt_size = FUNC1(max_size,
			    PAGE_SIZE * (1 << FUNC0(FUNC3(tgt_size) - 1, 1)));
		}

		if (tgt_size <= max_size) {
			tgt_objs = (tgt_size - sks_size) / obj_size;
		} else {
			tgt_objs = (max_size - sks_size) / obj_size;
			tgt_size = (tgt_objs * obj_size) + sks_size;
		}
	}

	if (tgt_objs == 0)
		return (-ENOSPC);

	*objs = tgt_objs;
	*size = tgt_size;

	return (0);
}