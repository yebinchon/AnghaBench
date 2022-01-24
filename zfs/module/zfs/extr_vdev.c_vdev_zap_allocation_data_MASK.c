#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ vdev_alloc_bias; int /*<<< orphan*/  vdev_top_zap; TYPE_2__* vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;
typedef  scalar_t__ vdev_alloc_bias_t ;
struct TYPE_6__ {int /*<<< orphan*/ * spa_meta_objset; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* VDEV_ALLOC_BIAS_DEDUP ; 
 char* VDEV_ALLOC_BIAS_LOG ; 
 char* VDEV_ALLOC_BIAS_SPECIAL ; 
 scalar_t__ VDEV_BIAS_DEDUP ; 
 scalar_t__ VDEV_BIAS_LOG ; 
 scalar_t__ VDEV_BIAS_NONE ; 
 scalar_t__ VDEV_BIAS_SPECIAL ; 
 int /*<<< orphan*/  VDEV_TOP_ZAP_ALLOCATION_BIAS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(vdev_t *vd, dmu_tx_t *tx)
{
	spa_t *spa = vd->vdev_spa;
	objset_t *mos = spa->spa_meta_objset;
	vdev_alloc_bias_t alloc_bias = vd->vdev_alloc_bias;
	const char *string;

	FUNC0(alloc_bias != VDEV_BIAS_NONE);

	string =
	    (alloc_bias == VDEV_BIAS_LOG) ? VDEV_ALLOC_BIAS_LOG :
	    (alloc_bias == VDEV_BIAS_SPECIAL) ? VDEV_ALLOC_BIAS_SPECIAL :
	    (alloc_bias == VDEV_BIAS_DEDUP) ? VDEV_ALLOC_BIAS_DEDUP : NULL;

	FUNC0(string != NULL);
	FUNC1(FUNC4(mos, vd->vdev_top_zap, VDEV_TOP_ZAP_ALLOCATION_BIAS,
	    1, FUNC3(string) + 1, string, tx));

	if (alloc_bias == VDEV_BIAS_SPECIAL || alloc_bias == VDEV_BIAS_DEDUP) {
		FUNC2(spa, tx);
	}
}