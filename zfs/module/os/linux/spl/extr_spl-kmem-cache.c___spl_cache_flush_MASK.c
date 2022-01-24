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
struct TYPE_6__ {int skm_avail; scalar_t__ skm_magic; int /*<<< orphan*/ * skm_objs; } ;
typedef  TYPE_1__ spl_kmem_magazine_t ;
struct TYPE_7__ {scalar_t__ skc_magic; } ;
typedef  TYPE_2__ spl_kmem_cache_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ SKC_MAGIC ; 
 scalar_t__ SKM_MAGIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(spl_kmem_cache_t *skc, spl_kmem_magazine_t *skm, int flush)
{
	int i, count = FUNC1(flush, skm->skm_avail);

	FUNC0(skc->skc_magic == SKC_MAGIC);
	FUNC0(skm->skm_magic == SKM_MAGIC);

	for (i = 0; i < count; i++)
		FUNC3(skc, skm->skm_objs[i]);

	skm->skm_avail -= count;
	FUNC2(skm->skm_objs, &(skm->skm_objs[count]),
	    sizeof (void *) * skm->skm_avail);
}