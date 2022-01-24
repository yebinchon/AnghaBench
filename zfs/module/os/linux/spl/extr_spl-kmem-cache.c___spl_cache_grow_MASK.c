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
struct TYPE_6__ {int /*<<< orphan*/  sks_list; scalar_t__ sks_objs; } ;
typedef  TYPE_1__ spl_kmem_slab_t ;
struct TYPE_7__ {int /*<<< orphan*/  skc_lock; int /*<<< orphan*/  skc_waitq; int /*<<< orphan*/  skc_flags; int /*<<< orphan*/  skc_partial_list; int /*<<< orphan*/  skc_obj_total; int /*<<< orphan*/  skc_slab_total; } ;
typedef  TYPE_2__ spl_kmem_cache_t ;
typedef  int /*<<< orphan*/  fstrans_cookie_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  KMC_BIT_DEADLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(spl_kmem_cache_t *skc, int flags)
{
	spl_kmem_slab_t *sks;

	fstrans_cookie_t cookie = FUNC6();
	sks = FUNC8(skc, flags);
	FUNC7(cookie);

	FUNC4(&skc->skc_lock);
	if (sks) {
		skc->skc_slab_total++;
		skc->skc_obj_total += sks->sks_objs;
		FUNC1(&sks->sks_list, &skc->skc_partial_list);

		FUNC3();
		FUNC0(KMC_BIT_DEADLOCKED, &skc->skc_flags);
		FUNC2();
		FUNC9(&skc->skc_waitq);
	}
	FUNC5(&skc->skc_lock);

	return (sks == NULL ? -ENOMEM : 0);
}