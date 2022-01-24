#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* vim_phys; scalar_t__ vim_havecounts; } ;
typedef  TYPE_2__ vdev_indirect_mapping_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_11__ {int /*<<< orphan*/  os_spa; } ;
typedef  TYPE_3__ objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_9__ {int /*<<< orphan*/  vimp_counts_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPA_FEATURE_OBSOLETE_COUNTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void
FUNC5(objset_t *os, uint64_t object, dmu_tx_t *tx)
{
	vdev_indirect_mapping_t *vim = FUNC4(os, object);
	if (vim->vim_havecounts) {
		FUNC0(FUNC1(os, vim->vim_phys->vimp_counts_object,
		    tx));
		FUNC2(os->os_spa, SPA_FEATURE_OBSOLETE_COUNTS, tx);
	}
	FUNC3(vim);

	FUNC0(FUNC1(os, object, tx));
}