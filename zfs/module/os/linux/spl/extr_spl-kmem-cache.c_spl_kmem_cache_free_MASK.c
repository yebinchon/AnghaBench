#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ skm_magic; scalar_t__ skm_avail; scalar_t__ skm_size; void** skm_objs; int /*<<< orphan*/  skm_refill; } ;
typedef  TYPE_1__ spl_kmem_magazine_t ;
struct TYPE_9__ {scalar_t__ skc_magic; int skc_flags; scalar_t__ skc_obj_emergency; TYPE_1__** skc_mag; int /*<<< orphan*/  skc_lock; int /*<<< orphan*/  skc_obj_alloc; int /*<<< orphan*/  skc_linux_cache; int /*<<< orphan*/  skc_private; int /*<<< orphan*/  (* skc_dtor ) (void*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ spl_kmem_cache_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KMC_BIT_DESTROY ; 
 int KMC_SLAB ; 
 scalar_t__ SKC_MAGIC ; 
 scalar_t__ SKM_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 size_t FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC13 (int) ; 

void
FUNC14(spl_kmem_cache_t *skc, void *obj)
{
	spl_kmem_magazine_t *skm;
	unsigned long flags;
	int do_reclaim = 0;
	int do_emergency = 0;

	FUNC0(skc->skc_magic == SKC_MAGIC);
	FUNC0(!FUNC12(KMC_BIT_DESTROY, &skc->skc_flags));

	/*
	 * Run the destructor
	 */
	if (skc->skc_dtor)
		skc->skc_dtor(obj, skc->skc_private);

	/*
	 * Free the object from the Linux underlying Linux slab.
	 */
	if (skc->skc_flags & KMC_SLAB) {
		FUNC2(skc->skc_linux_cache, obj);
		FUNC6(&skc->skc_lock);
		skc->skc_obj_alloc--;
		FUNC7(&skc->skc_lock);
		return;
	}

	/*
	 * While a cache has outstanding emergency objects all freed objects
	 * must be checked.  However, since emergency objects will never use
	 * a virtual address these objects can be safely excluded as an
	 * optimization.
	 */
	if (!FUNC1(obj)) {
		FUNC6(&skc->skc_lock);
		do_emergency = (skc->skc_obj_emergency > 0);
		FUNC7(&skc->skc_lock);

		if (do_emergency && (FUNC9(skc, obj) == 0))
			return;
	}

	FUNC4(flags);

	/*
	 * Safe to update per-cpu structure without lock, but
	 * no remote memory allocation tracking is being performed
	 * it is entirely possible to allocate an object from one
	 * CPU cache and return it to another.
	 */
	skm = skc->skc_mag[FUNC5()];
	FUNC0(skm->skm_magic == SKM_MAGIC);

	/*
	 * Per-CPU cache full, flush it to make space for this object,
	 * this may result in an empty slab which can be reclaimed once
	 * interrupts are re-enabled.
	 */
	if (FUNC13(skm->skm_avail >= skm->skm_size)) {
		FUNC8(skc, skm, skm->skm_refill);
		do_reclaim = 1;
	}

	/* Available space in cache, use it */
	skm->skm_objs[skm->skm_avail++] = obj;

	FUNC3(flags);

	if (do_reclaim)
		FUNC10(skc);
}