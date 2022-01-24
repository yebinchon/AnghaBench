#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ sks_magic; int sks_ref; int sks_objs; int /*<<< orphan*/  sks_list; int /*<<< orphan*/  sks_age; int /*<<< orphan*/  sks_free_list; TYPE_3__* sks_cache; } ;
typedef  TYPE_1__ spl_kmem_slab_t ;
struct TYPE_8__ {scalar_t__ sko_magic; int /*<<< orphan*/  sko_list; TYPE_1__* sko_slab; } ;
typedef  TYPE_2__ spl_kmem_obj_t ;
struct TYPE_9__ {scalar_t__ skc_magic; int /*<<< orphan*/  skc_slab_alloc; int /*<<< orphan*/  skc_partial_list; int /*<<< orphan*/  skc_obj_alloc; } ;
typedef  TYPE_3__ spl_kmem_cache_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SKC_MAGIC ; 
 scalar_t__ SKO_MAGIC ; 
 scalar_t__ SKS_MAGIC ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (TYPE_3__*,void*) ; 

__attribute__((used)) static void
FUNC5(spl_kmem_cache_t *skc, void *obj)
{
	spl_kmem_slab_t *sks = NULL;
	spl_kmem_obj_t *sko = NULL;

	FUNC0(skc->skc_magic == SKC_MAGIC);

	sko = FUNC4(skc, obj);
	FUNC0(sko->sko_magic == SKO_MAGIC);
	sks = sko->sko_slab;
	FUNC0(sks->sks_magic == SKS_MAGIC);
	FUNC0(sks->sks_cache == skc);
	FUNC1(&sko->sko_list, &sks->sks_free_list);

	sks->sks_age = jiffies;
	sks->sks_ref--;
	skc->skc_obj_alloc--;

	/*
	 * Move slab to skc_partial_list when no longer full.  Slabs
	 * are added to the head to keep the partial list is quasi-full
	 * sorted order.  Fuller at the head, emptier at the tail.
	 */
	if (sks->sks_ref == (sks->sks_objs - 1)) {
		FUNC3(&sks->sks_list);
		FUNC1(&sks->sks_list, &skc->skc_partial_list);
	}

	/*
	 * Move empty slabs to the end of the partial list so
	 * they can be easily found and freed during reclamation.
	 */
	if (sks->sks_ref == 0) {
		FUNC3(&sks->sks_list);
		FUNC2(&sks->sks_list, &skc->skc_partial_list);
		skc->skc_slab_alloc--;
	}
}