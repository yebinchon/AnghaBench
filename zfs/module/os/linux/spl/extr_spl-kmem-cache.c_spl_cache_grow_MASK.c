#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ skc_magic; int skc_flags; int /*<<< orphan*/  skc_lock; int /*<<< orphan*/  skc_obj_deadlock; int /*<<< orphan*/  skc_waitq; int /*<<< orphan*/  skc_ref; } ;
typedef  TYPE_1__ spl_kmem_cache_t ;
struct TYPE_10__ {int ska_flags; int /*<<< orphan*/  ska_tqe; TYPE_1__* ska_cache; } ;
typedef  TYPE_2__ spl_kmem_alloc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int HZ ; 
 int /*<<< orphan*/  KMC_BIT_DEADLOCKED ; 
 int /*<<< orphan*/  KMC_BIT_GROWING ; 
 int /*<<< orphan*/  KMC_BIT_REAPING ; 
 int KMC_KVMEM ; 
 int KMC_SLAB ; 
 int KMC_VMEM ; 
 int KM_NOSLEEP ; 
 int KM_PUBLIC_MASK ; 
 scalar_t__ SKC_MAGIC ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 TYPE_2__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  spl_cache_grow_work ; 
 int FUNC13 (TYPE_1__*,int,void**) ; 
 int /*<<< orphan*/  spl_kmem_cache_taskq ; 
 int FUNC14 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC21(spl_kmem_cache_t *skc, int flags, void **obj)
{
	int remaining, rc = 0;

	FUNC1(flags & ~KM_PUBLIC_MASK);
	FUNC0(skc->skc_magic == SKC_MAGIC);
	FUNC0((skc->skc_flags & KMC_SLAB) == 0);
	FUNC7();
	*obj = NULL;

	/*
	 * Before allocating a new slab wait for any reaping to complete and
	 * then return so the local magazine can be rechecked for new objects.
	 */
	if (FUNC18(KMC_BIT_REAPING, &skc->skc_flags)) {
		rc = FUNC14(&skc->skc_flags, KMC_BIT_REAPING,
		    TASK_UNINTERRUPTIBLE);
		return (rc ? rc : -EAGAIN);
	}

	/*
	 * To reduce the overhead of context switch and improve NUMA locality,
	 * it tries to allocate a new slab in the current process context with
	 * KM_NOSLEEP flag. If it fails, it will launch a new taskq to do the
	 * allocation.
	 *
	 * However, this can't be applied to KVM_VMEM due to a bug that
	 * __vmalloc() doesn't honor gfp flags in page table allocation.
	 */
	if (!(skc->skc_flags & KMC_VMEM) && !(skc->skc_flags & KMC_KVMEM)) {
		rc = FUNC2(skc, flags | KM_NOSLEEP);
		if (rc == 0)
			return (0);
	}

	/*
	 * This is handled by dispatching a work request to the global work
	 * queue.  This allows us to asynchronously allocate a new slab while
	 * retaining the ability to safely fall back to a smaller synchronous
	 * allocations to ensure forward progress is always maintained.
	 */
	if (FUNC17(KMC_BIT_GROWING, &skc->skc_flags) == 0) {
		spl_kmem_alloc_t *ska;

		ska = FUNC5(sizeof (*ska), FUNC6(flags));
		if (ska == NULL) {
			FUNC4(KMC_BIT_GROWING, &skc->skc_flags);
			FUNC9();
			FUNC20(&skc->skc_waitq);
			return (-ENOMEM);
		}

		FUNC3(&skc->skc_ref);
		ska->ska_cache = skc;
		ska->ska_flags = flags;
		FUNC16(&ska->ska_tqe);
		FUNC15(spl_kmem_cache_taskq,
		    spl_cache_grow_work, ska, 0, &ska->ska_tqe);
	}

	/*
	 * The goal here is to only detect the rare case where a virtual slab
	 * allocation has deadlocked.  We must be careful to minimize the use
	 * of emergency objects which are more expensive to track.  Therefore,
	 * we set a very long timeout for the asynchronous allocation and if
	 * the timeout is reached the cache is flagged as deadlocked.  From
	 * this point only new emergency objects will be allocated until the
	 * asynchronous allocation completes and clears the deadlocked flag.
	 */
	if (FUNC18(KMC_BIT_DEADLOCKED, &skc->skc_flags)) {
		rc = FUNC13(skc, flags, obj);
	} else {
		remaining = FUNC19(skc->skc_waitq,
		    FUNC12(skc), HZ / 10);

		if (!remaining) {
			FUNC10(&skc->skc_lock);
			if (FUNC18(KMC_BIT_GROWING, &skc->skc_flags)) {
				FUNC8(KMC_BIT_DEADLOCKED, &skc->skc_flags);
				skc->skc_obj_deadlock++;
			}
			FUNC11(&skc->skc_lock);
		}

		rc = -ENOMEM;
	}

	return (rc);
}