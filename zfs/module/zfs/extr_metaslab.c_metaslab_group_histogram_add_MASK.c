#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_12__ {TYPE_3__* ms_sm; int /*<<< orphan*/  ms_lock; } ;
typedef  TYPE_4__ metaslab_t ;
struct TYPE_13__ {int /*<<< orphan*/  mg_lock; int /*<<< orphan*/ * mg_histogram; TYPE_1__* mg_vd; TYPE_6__* mg_class; } ;
typedef  TYPE_5__ metaslab_group_t ;
struct TYPE_14__ {int /*<<< orphan*/ * mc_histogram; } ;
typedef  TYPE_6__ metaslab_class_t ;
struct TYPE_11__ {TYPE_2__* sm_phys; } ;
struct TYPE_10__ {scalar_t__* smp_histogram; } ;
struct TYPE_9__ {int vdev_ashift; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int SPACE_MAP_HISTOGRAM_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(metaslab_group_t *mg, metaslab_t *msp)
{
	metaslab_class_t *mc = mg->mg_class;
	uint64_t ashift = mg->mg_vd->vdev_ashift;

	FUNC0(FUNC1(&msp->ms_lock));
	if (msp->ms_sm == NULL)
		return;

	FUNC2(&mg->mg_lock);
	for (int i = 0; i < SPACE_MAP_HISTOGRAM_SIZE; i++) {
		mg->mg_histogram[i + ashift] +=
		    msp->ms_sm->sm_phys->smp_histogram[i];
		mc->mc_histogram[i + ashift] +=
		    msp->ms_sm->sm_phys->smp_histogram[i];
	}
	FUNC3(&mg->mg_lock);
}