#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  vdev_top_zap; int /*<<< orphan*/  vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  ms_flush_data_obj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int /*<<< orphan*/  VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(vdev_t *vd)
{
	uint64_t ms_flush_data_obj;
	int error = FUNC3(FUNC2(vd->vdev_spa),
	    vd->vdev_top_zap, VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS,
	    sizeof (ms_flush_data_obj), 1, &ms_flush_data_obj);
	if (error == ENOENT)
		return;
	FUNC0(error);

	FUNC1(ms_flush_data_obj);
}