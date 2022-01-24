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
typedef  scalar_t__ taskqid_t ;
struct TYPE_5__ {scalar_t__ skc_magic; int skc_flags; int skc_delay; int /*<<< orphan*/  skc_ref; int /*<<< orphan*/  skc_lock; scalar_t__ skc_taskqid; } ;
typedef  TYPE_1__ spl_kmem_cache_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HZ ; 
 int /*<<< orphan*/  KMC_BIT_DESTROY ; 
 int KMC_EXPIRE_AGE ; 
 int KMC_NOMAGAZINE ; 
 scalar_t__ SKC_MAGIC ; 
 int /*<<< orphan*/  TQ_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int spl_kmem_cache_expire ; 
 int /*<<< orphan*/  spl_kmem_cache_taskq ; 
 int /*<<< orphan*/  spl_magazine_age ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,void (*) (void*),TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC11(void *data)
{
	spl_kmem_cache_t *skc = (spl_kmem_cache_t *)data;
	taskqid_t id = 0;

	FUNC0(skc->skc_magic == SKC_MAGIC);

	/* Dynamically disabled at run time */
	if (!(spl_kmem_cache_expire & KMC_EXPIRE_AGE))
		return;

	FUNC2(&skc->skc_ref);

	if (!(skc->skc_flags & KMC_NOMAGAZINE))
		FUNC4(spl_magazine_age, skc, 1);

	FUNC7(skc);

	while (!FUNC10(KMC_BIT_DESTROY, &skc->skc_flags) && !id) {
		id = FUNC9(
		    spl_kmem_cache_taskq, spl_cache_age, skc, TQ_SLEEP,
		    FUNC3() + skc->skc_delay / 3 * HZ);

		/* Destroy issued after dispatch immediately cancel it */
		if (FUNC10(KMC_BIT_DESTROY, &skc->skc_flags) && id)
			FUNC8(spl_kmem_cache_taskq, id);
	}

	FUNC5(&skc->skc_lock);
	skc->skc_taskqid = id;
	FUNC6(&skc->skc_lock);

	FUNC1(&skc->skc_ref);
}