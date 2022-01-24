#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct kmem_cache {int dummy; } ;
struct TYPE_6__ {scalar_t__ skm_magic; size_t skm_avail; int /*<<< orphan*/  skm_age; void** skm_objs; } ;
typedef  TYPE_1__ spl_kmem_magazine_t ;
struct TYPE_7__ {scalar_t__ skc_magic; int skc_flags; int /*<<< orphan*/  skc_private; int /*<<< orphan*/  (* skc_ctor ) (void*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  skc_obj_align; TYPE_1__** skc_mag; int /*<<< orphan*/  skc_lock; int /*<<< orphan*/  skc_obj_alloc; struct kmem_cache* skc_linux_cache; } ;
typedef  TYPE_2__ spl_kmem_cache_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KMC_BIT_DESTROY ; 
 int KMC_SLAB ; 
 int KM_NOSLEEP ; 
 int KM_PUBLIC_MASK ; 
 scalar_t__ SKC_MAGIC ; 
 scalar_t__ SKM_MAGIC ; 
 int /*<<< orphan*/  jiffies ; 
 void* FUNC3 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 size_t FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (TYPE_2__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int*) ; 

void *
FUNC15(spl_kmem_cache_t *skc, int flags)
{
	spl_kmem_magazine_t *skm;
	void *obj = NULL;

	FUNC1(flags & ~KM_PUBLIC_MASK);
	FUNC0(skc->skc_magic == SKC_MAGIC);
	FUNC0(!FUNC14(KMC_BIT_DESTROY, &skc->skc_flags));

	/*
	 * Allocate directly from a Linux slab.  All optimizations are left
	 * to the underlying cache we only need to guarantee that KM_SLEEP
	 * callers will never fail.
	 */
	if (skc->skc_flags & KMC_SLAB) {
		struct kmem_cache *slc = skc->skc_linux_cache;
		do {
			obj = FUNC3(slc, FUNC4(flags));
		} while ((obj == NULL) && !(flags & KM_NOSLEEP));

		if (obj != NULL) {
			/*
			 * Even though we leave everything up to the
			 * underlying cache we still keep track of
			 * how many objects we've allocated in it for
			 * better debuggability.
			 */
			FUNC10(&skc->skc_lock);
			skc->skc_obj_alloc++;
			FUNC11(&skc->skc_lock);
		}
		goto ret;
	}

	FUNC6();

restart:
	/*
	 * Safe to update per-cpu structure without lock, but
	 * in the restart case we must be careful to reacquire
	 * the local magazine since this may have changed
	 * when we need to grow the cache.
	 */
	skm = skc->skc_mag[FUNC9()];
	FUNC0(skm->skm_magic == SKM_MAGIC);

	if (FUNC5(skm->skm_avail)) {
		/* Object available in CPU cache, use it */
		obj = skm->skm_objs[--skm->skm_avail];
		skm->skm_age = jiffies;
	} else {
		obj = FUNC12(skc, skm, flags);
		if ((obj == NULL) && !(flags & KM_NOSLEEP))
			goto restart;

		FUNC7();
		goto ret;
	}

	FUNC7();
	FUNC0(obj);
	FUNC0(FUNC2(obj, skc->skc_obj_align));

ret:
	/* Pre-emptively migrate object to CPU L1 cache */
	if (obj) {
		if (obj && skc->skc_ctor)
			skc->skc_ctor(obj, skc->skc_private, flags);
		else
			FUNC8(obj);
	}

	return (obj);
}