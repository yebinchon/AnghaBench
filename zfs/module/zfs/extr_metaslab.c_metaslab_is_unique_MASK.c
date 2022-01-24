#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_7__ {int ms_id; TYPE_2__* ms_group; } ;
typedef  TYPE_3__ metaslab_t ;
typedef  int /*<<< orphan*/  dva_t ;
typedef  int boolean_t ;
struct TYPE_6__ {TYPE_1__* mg_vd; } ;
struct TYPE_5__ {scalar_t__ vdev_id; int vdev_ms_shift; } ;

/* Variables and functions */
 int B_TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static boolean_t
FUNC3(metaslab_t *msp, dva_t *dva)
{
	uint64_t dva_ms_id;

	if (FUNC0(dva) == 0)
		return (B_TRUE);

	if (msp->ms_group->mg_vd->vdev_id != FUNC2(dva))
		return (B_TRUE);

	dva_ms_id = FUNC1(dva) >> msp->ms_group->mg_vd->vdev_ms_shift;

	return (msp->ms_id != dva_ms_id);
}